import requests

from rest_framework import generics
from my_settings import SERVICE_KEY

"""
    정미정
"""


class ResearchDataAPIController:
    """
        임상정보의 데이터를 OPEN API와 통신하여 받아옴
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
        response = requests.get(self.ENDPOINT_URL, params=params).json()
        return response['data']


class ResearchListView(generics.GenericAPIView):
    # 임상정보 리스트
    pass


class ResearchDetailView(generics.RetrieveAPIView):
    # 개별 임상정보
    pass
