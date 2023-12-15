from django import forms
from .import models

class Add_Room_form(forms.ModelForm):
    class Meta:
        model = models.Add_Room
        fields = "__all__"
        
class Add_Employee_form(forms.ModelForm):
    class Meta:
        model = models.Add_Employee
        fields = "__all__"