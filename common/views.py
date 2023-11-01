from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout

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
