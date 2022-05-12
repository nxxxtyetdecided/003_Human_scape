from rest_framework import serializers

from research.models import Research

"""
    정미정
"""


class ResearchSerializer(serializers.ModelSerializer):
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
    """
    task_name = serializers.CharField(help_text="과제명으로 검색", required=False)
    scope = task_name = serializers.CharField(help_text="연구범위로 검색", required=False)
    type = task_name = serializers.CharField(help_text="연구종류로 검색", required=False)
    agency = task_name = serializers.CharField(help_text="연구책임기관으로 검색", required=False)
    model = task_name = serializers.CharField(help_text="임상시험단계(연구모형)으로 검색", required=False)
    department = task_name = serializers.CharField(help_text="진료과로 검색", required=False)
