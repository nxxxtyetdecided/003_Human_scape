from pkg_resources import require
from rest_framework import serializers

from research.models import Research

"""
    정미정
"""


class ResearchSerializer(serializers.ModelSerializer):
    scope = serializers.CharField(source='scope.scope')
    type = serializers.CharField(source='type.type')
    agency = serializers.CharField(source='agency.agency')
    model = serializers.CharField(source='model.model')
    department = serializers.CharField(source='department.department')
    
    class Meta:
        model = Research
        fields = (
                  'task_id',
                  'task_name',
                  'period',
                  'target_number',
                  'scope',
                  'type',
                  'agency',
                  'model',
                  'department'
                )


class ResearchQuerySerializer(serializers.Serializer):
    """ 
        류성훈
        (view)ResearchListView에서 Swagger파라미터검색을 위한 Serializer
    """
    task_name = serializers.CharField(help_text="과제명으로 검색", required=False)
    scope = serializers.CharField(help_text="연구범위로 검색", required=False)
    type = serializers.CharField(help_text="연구종류로 검색", required=False)
    agency = serializers.CharField(help_text="연구책임기관으로 검색", required=False)
    model = serializers.CharField(help_text="임상시험단계(연구모형)으로 검색", required=False)
    department = serializers.CharField(help_text="진료과로 검색", required=False)
    offset = serializers.IntegerField(help_text="pagenation offset", required=False)
    limit = serializers.IntegerField(help_text="pagenation limit", required=False)
