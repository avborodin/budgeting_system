from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm


class LoginForm(AuthenticationForm):
    username = forms.CharField(max_length=100, required=True, widget=forms.TextInput(attrs={'placeholder': 'Логин','class': 'form-control'}))
    password = forms.CharField(max_length=50,  required=True, widget=forms.PasswordInput(attrs={'placeholder': 'Пароль','class': 'form-control'}))
    remember_me = forms.BooleanField(required=False)

    class Meta:
        model = User
        fields = ['username', 'password', 'remember_me']
