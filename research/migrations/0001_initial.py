# Generated by Django 4.0.4 on 2022-05-12 12:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ResearchAgency',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('agency', models.CharField(max_length=200, verbose_name='연구책임기관')),
            ],
            options={
                'db_table': 'agencies',
            },
        ),
        migrations.CreateModel(
            name='ResearchDepartment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('department', models.CharField(max_length=200, verbose_name='진료과')),
            ],
            options={
                'db_table': 'departments',
            },
        ),
        migrations.CreateModel(
            name='ResearchModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('model', models.CharField(blank=True, max_length=200, null=True, verbose_name='임상시험단계(연구모형)')),
            ],
            options={
                'db_table': 'models',
            },
        ),
        migrations.CreateModel(
            name='ResearchScope',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('scope', models.CharField(max_length=200, verbose_name='연구범위')),
            ],
            options={
                'db_table': 'scopes',
            },
        ),
        migrations.CreateModel(
            name='ResearchType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('type', models.CharField(max_length=200, verbose_name='연구종류')),
            ],
            options={
                'db_table': 'types',
            },
        ),
        migrations.CreateModel(
            name='Research',
            fields=[
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('task_id', models.CharField(max_length=100, primary_key=True, serialize=False, verbose_name='과제번호')),
                ('task_name', models.CharField(max_length=300, verbose_name='과제명')),
                ('period', models.CharField(blank=True, max_length=300, null=True, verbose_name='연구기간')),
                ('target_number', models.CharField(blank=True, max_length=300, null=True, verbose_name='전체목표연구대상자수')),
                ('agency', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='research.researchagency', verbose_name='연구책임기관')),
                ('department', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='research.researchdepartment', verbose_name='진료과')),
                ('model', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='research.researchmodel', verbose_name='임상시험단계(연구모형)')),
                ('scope', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='research.researchscope', verbose_name='연구범위')),
                ('type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='research.researchtype', verbose_name='연구종류')),
            ],
            options={
                'db_table': 'researches',
            },
        ),
    ]
