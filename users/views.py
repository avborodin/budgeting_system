from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.views import LoginView, PasswordResetView, PasswordResetDoneView
from django.contrib.messages.views import SuccessMessageMixin
from .forms import LoginForm

def home(request):
    return render(request, 'users/home.html')

def LoginUser(request):

    if request.method == 'POST':
        username = request.POST.get("login","")
        password = request.POST.get('password',"")
        user = authenticate(username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect("/")
        else:
            return redirect("/login_user")

    if request.user.is_authenticated:
        return redirect("/")

    return render(request,"login.html")

def logout_user(request):
    logout(request)
    return redirect("/")


class CustomLoginView(LoginView):
    form_class = LoginForm
    template_name = "login.html"

    def form_valid(self, form):
        remember_me = form.cleaned_data.get('remember_me')

        if not remember_me:
            # установить срок действия сеанса на 0 секунд.  Это автоматически закроет сеанс после закрытия браузера.
            self.request.session.set_expiry(0)

            # установить сеанс как измененный, чтобы принудительно сохранять обновления данных и файлы cookie
            self.request.session.modified = True

        # else browser session will be as long as the session cookie time "SESSION_COOKIE_AGE" defined in settings.py
        return super(CustomLoginView, self).form_valid(form)

class ResetPasswordView(SuccessMessageMixin, PasswordResetView):
    template_name = 'password_reset.html'
    email_template_name = 'password_reset_email.html'
    subject_template_name = 'password_reset_subject.txt'
    success_message = "We've emailed you instructions for setting your password, " \
                      "if an account exists with the email you entered. You should receive them shortly." \
                      " If you don't receive an email, " \
                      "please make sure you've entered the address you registered with, and check your spam folder."
    #success_url = reverse_lazy('users-home')
    success_url = reverse_lazy('password-reset-done')

class ResetPasswordDoneView(PasswordResetDoneView):
    template_name = 'password_reset_done.html'

