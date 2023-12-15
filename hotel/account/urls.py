from django.urls import path
from account import views

urlpatterns = [
     path('Aothur_login', views.Aothur_login, name='login'),
    path('auth_logout', views.auth_logout, name='logout'),
    path('Aothur_Reg', views.Aothur_Reg, name='register'),
]