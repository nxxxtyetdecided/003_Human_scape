from tabnanny import verbose
from django.db import models

from core.models import TimeStampModel


class Research(TimeStampModel):
    task_id = models.CharField(max_length=100, verbose_name='과제번호')
    task_name = models.CharField(max_length=300, verbose_name='과제명')
    period = models.CharField(max_length=300, null=True, blank=True, verbose_name='연구기간')
    target_number = models.CharField(max_length=300, null=True, blank=True, verbose_name='전체목표연구대상자수')
    scope = models.ForeignKey('ResearchScope', on_delete=models.CASCADE, verbose_name='연구범위')
    type = models.ForeignKey('ResearchType', on_delete=models.CASCADE, verbose_name='연구종류')
    agency = models.ForeignKey('ResearchAgency', on_delete=models.CASCADE, verbose_name='연구책임기관')
    model = models.ForeignKey('ResearchModel', on_delete=models.CASCADE, null=True, blank=True, verbose_name='임상시험단계(연구모형)')
    department = models.ForeignKey('ResearchDepartment', on_delete=models.CASCADE, verbose_name='진료과')

    class Meta:
        db_table = 'researches'


class ResearchScope(TimeStampModel):
    scope = models.CharField(max_length=200, verbose_name='연구범위')

    class Meta:
        db_table = 'scopes'


class ResearchType(TimeStampModel):
    type = models.CharField(max_length=200, verbose_name='연구종류')

    class Meta:
        db_table = 'types'


class ResearchAgency(TimeStampModel):
    agency = models.CharField(max_length=200, verbose_name='연구책임기관')
    class Meta:
        db_table = 'agencies'


class ResearchModel(TimeStampModel):
    model = models.CharField(max_length=200, null=True, blank=True, verbose_name='임상시험단계(연구모형)')

    class Meta:
        db_table = 'models'


class ResearchDepartment(TimeStampModel):
    department = models.CharField(max_length=200, verbose_name='진료과')

    class Meta:
        db_table = 'departments'