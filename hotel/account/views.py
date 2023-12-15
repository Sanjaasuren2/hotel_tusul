from django.shortcuts import redirect, render
from django.contrib.auth import authenticate,logout,login
from .import models
from django.contrib import auth, messages
from django.contrib.auth.decorators import login_required
import requests
from django.http import HttpResponse

def Aothur_login(request):
    # conn = mysql.connector.connect(host='localhost', user='root', password='', database='Hotel_Management_System')
    if request.method == 'POST':
        User_email = request.POST.get('Email')
        User_password = request.POST.get('Password')
        # cur = conn.cursor()
        # quer1 = "select Email,Password from Authority_reg where Email=%s"
        # val = (User_email,)
        # cur.execute(quer1, val)
        # data = cur.fetchall()
        # print(data, User_email)
        # if User_email == data[0][0] and User_password == data[0][1]:
        if models.Authorregis.objects.filter(Email=User_email, Password=User_password):
            return redirect("index")
        else:
            return HttpResponse('user name and password not matching')
    return render(request,'account/login.html')
def auth_logout(request):
    logout(request)
    messages.success(request, 'You have been logged out successfully.')
    return redirect('index')
def Aothur_Reg(request):
    if request.method == 'POST':
        Data = models.Authorregis()
        Data.Fname = request.POST.get('Fname')
        Data.Lname = request.POST.get('Lname')
        Data.Email = request.POST.get('Email')
        Data.Phone_Number = request.POST.get('Phone_Number')
        Data.Password = request.POST.get('Password')
        Con_password = request.POST.get('Con_password')
        if Data.Password == Con_password:
            Data.save()
            return redirect('account/login')
        else:
           return HttpResponse('password and confirm password not matching')
    return render(request,'account/register.html')
