# In forms.py (inside your Django app)
from django import forms
from .models import Room

class RoomForm(forms.ModelForm):
    class Meta:
        model = Room
        fields = ['room_id', 'name', 'description', 'image', 'rooms', 'beds', 'bathrooms', 'balconies', 'adults', 'children', 'haswifi', 'hastv', 'hasminibar', 'hasac', 'price']
