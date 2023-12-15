from django import forms
from django.forms import ModelForm 
from django.contrib.auth.models import User
from account.models import Account

class RegisterForm(ModelForm):
    password = forms.CharField(widget = forms.PasswordInput(attrs={
        
    }))
    repeat_password = forms.CharField(widget = forms.PasswordInput(attrs={
        
    }))
    
    class Meta():
        model = User
        fields = ('email', 'first_name', 'last_name', 'password', 'repeat_password')

    def __init__(self, *args, **kwargs):
        super(RegisterForm, self).__init__(*args, **kwargs)
        self.fields['email']
        self.fields['first_name']
        self.fields['last_name']
        for field in self.fields:
            self.fields[field].widget.attrs['class'] = 'form-control'
# forms.py
from django import forms

class LoginForm(forms.Form):
    email = forms.CharField(label="Нэвтрэх нэр")
    password = forms.CharField(label="Нууц үг", widget=forms.PasswordInput)

    # You can include additional validation or custom logic here if needed



class AccountsForm(ModelForm):
    phone_number = forms.CharField(widget=forms.NumberInput(attrs={
        'placeholder': 'Enter phone',
        'class':'form-control',
    }))
    
    class Meta():
        model = Account
        fields = ('phone_number', 'pro_image')
