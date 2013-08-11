# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'News'
        db.create_table('news_news', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=50, null=True)),
            ('title_en', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('title_tr', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('title_de', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('content', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('content_en', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('content_tr', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('content_de', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
        ))
        db.send_create_signal('news', ['News'])


    def backwards(self, orm):
        # Deleting model 'News'
        db.delete_table('news_news')


    models = {
        'news.news': {
            'Meta': {'object_name': 'News'},
            'content': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'content_de': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'content_en': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'content_tr': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True'}),
            'title_de': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'title_en': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'title_tr': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'})
        }
    }

    complete_apps = ['news']