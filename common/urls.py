from django.urls import path, re_path
from django.conf import settings
from django.views.static import serve
from django.conf.urls.static import static
from common.views import *

app_name = "common"

urlpatterns = [
    path('', index, name='index'),
]
