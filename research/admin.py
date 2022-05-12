from django.contrib import admin
from .models import Research,ResearchScope,ResearchType,ResearchAgency,ResearchModel,ResearchDepartment

# Register your models here.
admin.site.register(Research)
admin.site.register(ResearchScope)
admin.site.register(ResearchType)
admin.site.register(ResearchAgency)
admin.site.register(ResearchModel)
admin.site.register(ResearchDepartment)
