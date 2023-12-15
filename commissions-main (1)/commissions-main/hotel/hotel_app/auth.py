from django.shortcuts import render,redirect
import json
from django.core.serializers.json import DjangoJSONEncoder
from django.http import JsonResponse
from hotel_app.models import User

def create_user(request):
     try:
          json_data = json.loads(request.body.decode('utf-8'))
          first_name = json_data.get('first_name', '')
          last_name = json_data.get('last_name', '')
          email = json_data.get('email', '')
          phone = json_data.get('phone', '')
          password = json_data.get('password', '')
          user = User.objects.create(id=None, first_name=first_name, last_name=last_name, email=email, phone=phone, password=password)
          if user is not None:
               return JsonResponse({'status': 'Success'})
          else:
               return JsonResponse({'status': 'Failure', 'message': 'Error creating user'})
     except json.JSONDecodeError:
          return JsonResponse({'status': 'Failure', 'message': 'Invalid JSON data'}, status=400)

def login_user(request):
    try:
        json_data = json.loads(request.body.decode('utf-8'))
        email = json_data.get('email', '')
        password = json_data.get('password', '')
        users = User.objects.filter(email=email, password=password)
        if users.exists():
          user = users.first()
          user_json = json.dumps({
                'id': str(user.id),
                'first_name': user.first_name,
                'last_name': user.last_name,
                'email': user.email,
                'phone': user.phone,
                'role': user.role,
                # Add more attributes as needed
            }, cls=DjangoJSONEncoder)
          
          request.session['user'] = user_json
          print(request.session['user'])
          return JsonResponse({"status": "Success"})
        return JsonResponse({"status": "Failed", "message": "User not found"})
    except User.DoesNotExist:
          return JsonResponse({"status": "Failed", "message": "User not found"})

def logout_user(request):
     request.session.pop('user', None)
     return redirect('/')