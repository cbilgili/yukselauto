from django.db import models
from django.db.models import permalink
from tinymce.models import HTMLField

# Create your models here.
class News(models.Model):
    title = models.CharField(max_length=50, null=True)
    content = HTMLField(null=True, blank=True)

    def __unicode__(self):
        return '%s' % self.title

    @permalink
    def get_absolute_url(self):
        return 'view_news_entry', None, { 'news_id': self.id}
