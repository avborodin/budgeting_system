from django.contrib import admin
from django.urls import include, path, re_path
from django.conf import settings
from django.views.static import serve
from django.contrib.auth import views as auth_views
from users.views import *

urlpatterns = [
    re_path(r'^static/(?P<path>.*)$', serve,{'document_root': settings.STATIC_ROOT}),
    path('admin/', admin.site.urls),
    path("", include("common.urls", namespace="common")),
	path('counterparty/', include('counterparty.urls', namespace="counterparty")),
    path('', include('users.urls')),
    path('logout/',logout_user, name='logout'),
    path('login/', CustomLoginView.as_view(redirect_authenticated_user=True, authentication_form=LoginForm), name='login'),
    path('password_reset/', ResetPasswordView.as_view(), name='password-reset'),
    path('password_reset_done/', ResetPasswordDoneView.as_view(), name='password-reset-done'),
    path('password_reset_confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(template_name='password_reset_confirm.html'),
         name='password-reset-confirm'),
    path('password_reset_complete/',
         auth_views.PasswordResetCompleteView.as_view(template_name='password_reset_complete.html'),
         name='password_reset_complete'),
]
