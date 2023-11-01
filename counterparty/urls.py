from django.urls import path, re_path
from django.conf import settings
from django.views.static import serve
from django.conf.urls.static import static
from . import views

app_name = "counterparty"

urlpatterns = [
    #re_path(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
    path('', views.index, name='index'),
 	path('test', views.test, name='test'),
    #path('login_user/', views.LoginUser, name='login'),
    path('form_create', views.form_create, name='form_create'),
    path('form_edit/<int:counterparty_id>', views.form_edit, name='form_edit'),
    path('delete/<int:counterparty_id>', views.delete, name='delete'),
   # path('logout/',views.logout_user, name='logout'),
    path('json_counterparties/',views.getCounterparties, name='json_counterparties'),
    path('json_opfs/', views.getOpf, name='json_opfs')
]
