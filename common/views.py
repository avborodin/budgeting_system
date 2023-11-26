from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required

@login_required(login_url="/login/")
def index(request):
    context = {}
    return render(request, "index.html", context)
