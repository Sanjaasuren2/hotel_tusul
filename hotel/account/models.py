from django.db import models
from django.contrib.auth import get_user_model


class Authorregis(models.Model):
    Id = models.AutoField(primary_key=True)
    Fname = models.CharField(max_length=255)
    Lname = models.CharField(max_length=255)
    Email = models.EmailField(unique=True)
    Phone_Number = models.IntegerField()
    Password = models.CharField(max_length=255)
    Date = models.DateField(auto_now_add=True)
    Time = models.TimeField(auto_now_add=True)
    def __str__(self):
        return self.Fname
    class Meta:
        db_table = 'Authority_reg'