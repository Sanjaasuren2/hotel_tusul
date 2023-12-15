from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from . import settings
from hotel_app import urls as s_urls

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(s_urls)),
] + static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)