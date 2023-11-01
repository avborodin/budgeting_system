from django.urls import path, re_path
from django.conf import settings
from django.views.static import serve
from django.conf.urls.static import static
from . import views

app_name = "common"

urlpatterns = [
    re_path(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
    path('login_user/', views.LoginUser, name='login'),
    path('logout/',views.logout_user, name='logout'),
]
