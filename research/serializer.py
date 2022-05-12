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
