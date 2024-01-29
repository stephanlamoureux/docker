## pokemon_app/models.py

# models has many different methods we will utilize when creating our Models
from django.db import models


# Create your models here.
# models.Model tell Django this is a Model that should be reflected on our database
class Pokemon(models.Model):
    # CharField is a character field and has a default max length of 255 characters
    name = models.CharField(max_length=255)
    # IntegerField will allow only solid numerical values as input
    level = models.IntegerField(default=1)
