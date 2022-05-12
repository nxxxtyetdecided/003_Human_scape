from django.urls import path

from research.views import ResearchListView, ResearchDetailView

urlpatterns = [
    path('', ResearchListView.as_view()),
    path('/<str:task_id>', ResearchDetailView.as_view())
]