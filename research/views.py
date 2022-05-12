from datetime import date, timedelta
import requests

from django.db.models import Q
from django.http import JsonResponse

from rest_framework import generics

from config.settings import SERVICE_KEY
from research.models import (
    Research, ResearchScope, ResearchType,
    ResearchAgency, ResearchModel, ResearchDepartment
)
from research.serializer import ResearchSerializer


class ResearchDataAPIController():
    """
        정미정
        임상정보의 데이터를 OPEN API와 통신하여 받아옴
        권상현
        SERVICE_KEY 유효성 여부 검사하여 인가되지 않은 SERVICE_KEY일 경우 에러 메시지와 401 status_code을 반환하는 로직 추가
        ENDPOINT_URL에 문제가 생겨 서버가 응답하지 않을 경우 에러 메시지와 500 status_code을 반환하는 로직 추가
        OPEN API를 통해 데이터 요청 시 오랜 시간 지연될 경우 3초 후 취소하는 옵션 추가
    """
    ENDPOINT_URL = 'https://api.odcloud.kr/api/3074271/v1/uddi:cfc19dda-6f75-4c57-86a8-bb9c8b103887'

    def __init__(self):
        self.page = 1
        self.total_cnt = self._total_count()

    def _total_count(self):
        params = {
            'serviceKey': SERVICE_KEY,
        }
        response = requests.get(self.ENDPOINT_URL, params=params).json()
        return response['totalCount']

    def call(self):
        params = {
            'serviceKey': SERVICE_KEY,
            'page': self.page,
            'perPage': self.total_cnt
        }
        response = requests.get(self.ENDPOINT_URL, params=params, timeout=3)

        if response.status_code == 401:
            return JsonResponse({"MESSASE : UNAUTHORIZED_ERROR"}, status=401)

        if response.status_code == 500:
            return JsonResponse({"MESSASE : OPEN_API_SERVER_ERROR"}, status=500)

        return response.json()['data']


def batch_task_update_or_create_research():
    """
        권상현
    """
    research_data = ResearchDataAPIController().call()

    for data in research_data:
        task_id = data['과제번호']
        task_name = data['과제명']
        period = data['연구기간']
        target_number = data['전체목표연구대상자수']
        scope, _ = ResearchScope.objects.get_or_create(scope=data['연구범위'])
        type, _ = ResearchType.objects.get_or_create(type=data['연구종류'])
        agency, _ = ResearchAgency.objects.get_or_create(agency=data['연구책임기관'])
        model, _ = ResearchModel.objects.get_or_create(model=data['임상시험단계(연구모형)'])
        department, _ = ResearchDepartment.objects.get_or_create(department=data['진료과'])

        research, is_created = Research.objects.get_or_create(
            task_id=task_id,
            defaults={
                'task_name': task_name,
                'period': period,
                'target_number': target_number,
                'scope': scope,
                'type': type,
                'agency': agency,
                'model': model,
                'department': department
            }
        )

        if not is_created:
            update_flag = False

            if research.target_number != target_number:
                research.target_number = target_number
                update_flag = True

            if research.period != period:
                research.period = period
                update_flag = True

            if research.model != model:
                research.model = model
                update_flag = True

            if update_flag:
                research.save()


class ResearchHandler:
    """
        정미정
    """

    def pagination(self, request):
        data = request.query_params.get
        offset = int(data('offset', 0))
        limit = int(data('limit', 5))

        return offset, limit

    def get_query_params(self, request):
        week = date.today() - timedelta(days=7)
        q = Q(updated_at__gte=week)

        data = request.query_params.get
        task_name = data('task_name', None)
        if task_name:
            q &= Q(task_name__icontains=task_name)

        scope = data('scope', None)
        if scope:
            q &= Q(scope__scope__icontains=scope)

        type = data('type', None)
        if type:
            q &= Q(type__type__icontains=type)

        agency = data('agency', None)
        if agency:
            q &= Q(agency__agency__icontains=agency)

        model = data('model', None)
        if model:
            q &= Q(model__model__icontains=model)

        department = data('department', None)
        if department:
            q &= Q(department__depatrment__icontains=department)

        return q


class ResearchListView(generics.ListAPIView, ResearchHandler):
    """
        정미정
    """
    def get_queryset(self):
        q = self.get_query_params(self.request)
        offset, limit = self.pagination(self.request)

        queryset = Research.objects.filter(q)[offset:offset + limit]
        return queryset

    def get(self, request, *args, **kwargs):
        return self.list(request, *args, **kwargs)

    serializer_class = ResearchSerializer


class ResearchDetailView(generics.RetrieveAPIView):
    """
        정미정
    """
    queryset = Research.objects.all()
    serializer_class = ResearchSerializer
    lookup_field = 'task_id'

    def get(self, request, *args, **kwargs):
        return self.retrieve(request, *args, **kwargs)
