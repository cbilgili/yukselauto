from django.db import models
from django.db.models import permalink


# Create your models here.
class Brand(models.Model):
    name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=100, unique=True)

    def __unicode__(self):
        return '%s' % self.name

    @permalink
    def get_absolute_url(self):
        return 'view_brand_entry', None, { 'slug': self.slug }

class Product(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(max_length=100, unique=True)
    created = models.DateTimeField(db_index=True, auto_now_add=True)

    brand = models.ForeignKey(Brand)

    def __unicode__(self):
        return '%s' % self.title

    @permalink
    def get_absolute_url(self):
        return 'view_product_entry', None, { 'slug': self.slug }











