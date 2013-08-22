from django.db import models
from django.db.models import permalink
from tinymce.models import HTMLField
import os
import uuid

# Create your models here.
class News(models.Model):
    @staticmethod
    def generate_new_filename(instance, filename):
        f, ext = os.path.splitext(filename)
        return '%s%s' % (uuid.uuid4().hex, ext)

    image = models.ImageField(upload_to=generate_new_filename, default='', blank=True)
    title = models.CharField(max_length=50, null=True)
    content = HTMLField(null=True, blank=True)

    def __unicode__(self):
        return '%s' % self.title

    @permalink
    def get_absolute_url(self):
        return 'view_news_entry', None, { 'news_id': self.id}
