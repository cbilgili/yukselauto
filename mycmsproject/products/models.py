from django.db import models
from django.db.models import permalink
from mptt.models import MPTTModel, TreeForeignKey
import os
import uuid
from tinymce.models import HTMLField



# Create your models here.
class ProductType(models.Model):
    name = models.CharField(max_length=50, null=True)
    slug = models.SlugField(max_length=100, unique=False)

    def __unicode__(self):
        return '%s' % self.name

    @permalink
    def get_absolute_url(self):
        return 'view_product_entry', None, { 'name': self.name }


class Category(MPTTModel):
    name = models.CharField(max_length=150)
    slug = models.SlugField(max_length=100)
    product_type = models.ForeignKey(ProductType, null=True)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children')
    position = models.PositiveSmallIntegerField("Position", default=0)
    meta_keywords = models.TextField(max_length=200, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    header1_name = models.CharField(max_length=200, null=True, blank=True, default='Yuksel No')
    header2_name = models.CharField(max_length=200, null=True, blank=True, default='Image')
    header3_name = models.CharField(max_length=200, null=True, blank=True, default='OEM No')
    header4_name = models.CharField(max_length=200, null=True, blank=True, default='Description')
    show_image = models.BooleanField(default=True)
    can_go_to_detail_page = models.BooleanField(default=True)

    class Meta:
        ordering = ['position']

    #class MPTTMeta:
    #   order_insertion_by = ['name']

    def __unicode__(self):
        return '%s' % self.name

    @permalink
    def get_absolute_url(self):
        if self.parent:
            return 'view_category_entry', None, { 'slug': self.slug, 'parentslug': self.parent.slug, 'category_id': self.id, 'product_type': self.product_type.slug }
        else:
            return 'view_category_entry', None, { 'slug': self.slug, 'parentslug': 'category', 'category_id': self.id, 'product_type': self.product_type.slug }



class Product(models.Model):
    @staticmethod
    def generate_new_filename(instance, filename):
        f, ext = os.path.splitext(filename)
        return '%s%s' % (uuid.uuid4().hex, ext)

    image = models.ImageField(upload_to=generate_new_filename)
    oem = models.TextField(blank=True)
    yuksel_no = models.CharField(max_length=250)
    title = models.CharField(max_length=200)
    slug = models.SlugField(max_length=100)
    engine = models.TextField(blank=True)
    type = HTMLField(null=True, blank=True)
    description = HTMLField(null=True, blank=True)
    detail = HTMLField(null=True, blank=True)
    created = models.DateTimeField(db_index=True, auto_now_add=True)
    meta_keywords = models.CharField(max_length=200, null=True, blank=True)
    meta_description = models.CharField(max_length=200, null=True, blank=True)
    dont_show_at_new = models.BooleanField(default=False)
    category = models.ForeignKey(Category, null=True)

    def __unicode__(self):
        return '%s' % self.title

    @permalink
    def get_absolute_url(self):
        return 'view_product_entry', None, { 'product_type': self.category.product_type.slug, 'slug': self.slug, 'product_id': self.id  }


class CatalogueRequest(models.Model):


    def __unicode__(self):
        return '%s' % self.name

#    @permalink
#    def get_absolute_url(self):
#        if self.parent:
#            return 'view_category_entry', None, { 'slug': self.slug, 'parentslug': self.parent.slug, 'category_id': self.id, 'product_type': self.product_type.slug }
#        else:
#            return 'view_category_entry', None, { 'slug': self.slug, 'parentslug': 'category', 'category_id': self.id, 'product_type': self.product_type.slug }






