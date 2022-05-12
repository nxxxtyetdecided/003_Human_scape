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
