from django.urls import path, re_path
from django.conf import settings
from django.views.static import serve
from django.conf.urls.static import static
from counterparty.views import *

app_name = "counterparty"

urlpatterns = [
  	#path('test', test, name='test'),
    path('', index, name='index'),
    path('form_create', form_create, name='form-create'),
    path('form_edit/<int:counterparty_id>', form_edit, name='form-edit'),
    path('delete/<int:counterparty_id>', delete, name='delete'),
    path('json_counterparties/',getCounterparties, name='json_counterparties'),
    path('json_opfs/', getOpf, name='json_opfs')
]
