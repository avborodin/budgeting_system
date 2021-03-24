from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
 	path('test', views.test, name='test'),
    path('login_user/', views.LoginUser, name="login"),
    path('form_create', views.form_create, name="form_create"),
    path('form_edit/<int:counterparty_id>', views.form_edit, name="form_edit"),  
    path('delete/<int:counterparty_id>', views.delete, name="delete"),
    path('logout/',views.logout_user, name="logout"),
]