from django.db import models
from django.db.models import permalink
from mptt.models import MPTTModel, TreeForeignKey



# Create your models here.
class ProductType(models.Model):
    name = models.CharField(max_length=50, null=True)
    slug = models.SlugField(max_length=100, unique=True)

    def __unicode__(self):
        return '%s' % self.name

    @permalink
    def get_absolute_url(self):
        return 'view_product_entry', None, { 'name': self.name }


class Category(MPTTModel):
    name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=100, unique=True)
    product_type = models.ForeignKey(ProductType, null=True)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children')

    class MPTTMeta:

        order_insertion_by = ['name']

    def __unicode__(self):
        return '%s' % self.name

    @permalink
    def get_absolute_url(self):
        return 'view_category_entry', None, { 'name': self.name }



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
    category = models.ForeignKey(Category, null=True)

    def __unicode__(self):
        return '%s' % self.title

    @permalink
    def get_absolute_url(self):
        return 'view_product_entry', None, { 'slug': self.slug }










