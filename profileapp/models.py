from django.contrib.auth.models import User
from django.db import models

# Create your models here.
from pyexpat import model


class Profile(models.Model) :
    user = model.OntoOneField(User, on_delete=models.CASCADE, related_name = 'profile')

    #이미지 저장경로
    image = model.ImageField(upload_to='profile/', null=True)
    nickname = models.CharField(max_length=20, unique=True, null = True)
    message = models.CharField(max_length=100, null=True)



