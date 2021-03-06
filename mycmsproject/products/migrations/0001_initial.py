# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'ProductType'
        db.create_table('products_producttype', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=50, null=True)),
            ('name_en', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('name_tr', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('name_de', self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True)),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=100)),
        ))
        db.send_create_signal('products', ['ProductType'])

        # Adding model 'Category'
        db.create_table('products_category', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=150)),
            ('name_en', self.gf('django.db.models.fields.CharField')(max_length=150, null=True, blank=True)),
            ('name_tr', self.gf('django.db.models.fields.CharField')(max_length=150, null=True, blank=True)),
            ('name_de', self.gf('django.db.models.fields.CharField')(max_length=150, null=True, blank=True)),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=100)),
            ('product_type', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['products.ProductType'], null=True)),
            ('parent', self.gf('mptt.fields.TreeForeignKey')(blank=True, related_name='children', null=True, to=orm['products.Category'])),
            ('position', self.gf('django.db.models.fields.PositiveSmallIntegerField')(default=0)),
            ('meta_keywords', self.gf('django.db.models.fields.TextField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_en', self.gf('django.db.models.fields.TextField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_tr', self.gf('django.db.models.fields.TextField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_de', self.gf('django.db.models.fields.TextField')(max_length=200, null=True, blank=True)),
            ('meta_description', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_en', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_tr', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_de', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('lft', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('rght', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('tree_id', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
            ('level', self.gf('django.db.models.fields.PositiveIntegerField')(db_index=True)),
        ))
        db.send_create_signal('products', ['Category'])

        # Adding model 'Product'
        db.create_table('products_product', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('image', self.gf('django.db.models.fields.files.ImageField')(max_length=100)),
            ('oem', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('yuksel_no', self.gf('django.db.models.fields.CharField')(max_length=250)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('slug', self.gf('django.db.models.fields.SlugField')(max_length=100)),
            ('engine', self.gf('django.db.models.fields.TextField')(blank=True)),
            ('engine_en', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('engine_tr', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('engine_de', self.gf('django.db.models.fields.TextField')(null=True, blank=True)),
            ('type', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('type_en', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('type_tr', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('type_de', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('description', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('description_en', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('description_tr', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('description_de', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('detail', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('detail_en', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('detail_tr', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('detail_de', self.gf('tinymce.models.HTMLField')(null=True, blank=True)),
            ('created', self.gf('django.db.models.fields.DateTimeField')(auto_now_add=True, db_index=True, blank=True)),
            ('meta_keywords', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_en', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_tr', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_keywords_de', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_en', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_tr', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('meta_description_de', self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True)),
            ('category', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['products.Category'], null=True)),
        ))
        db.send_create_signal('products', ['Product'])


    def backwards(self, orm):
        # Deleting model 'ProductType'
        db.delete_table('products_producttype')

        # Deleting model 'Category'
        db.delete_table('products_category')

        # Deleting model 'Product'
        db.delete_table('products_product')


    models = {
        'products.category': {
            'Meta': {'ordering': "['position']", 'object_name': 'Category'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'level': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'lft': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'meta_description': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_de': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_en': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_tr': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords': ('django.db.models.fields.TextField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_de': ('django.db.models.fields.TextField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_en': ('django.db.models.fields.TextField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_tr': ('django.db.models.fields.TextField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '150'}),
            'name_de': ('django.db.models.fields.CharField', [], {'max_length': '150', 'null': 'True', 'blank': 'True'}),
            'name_en': ('django.db.models.fields.CharField', [], {'max_length': '150', 'null': 'True', 'blank': 'True'}),
            'name_tr': ('django.db.models.fields.CharField', [], {'max_length': '150', 'null': 'True', 'blank': 'True'}),
            'parent': ('mptt.fields.TreeForeignKey', [], {'blank': 'True', 'related_name': "'children'", 'null': 'True', 'to': "orm['products.Category']"}),
            'position': ('django.db.models.fields.PositiveSmallIntegerField', [], {'default': '0'}),
            'product_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['products.ProductType']", 'null': 'True'}),
            'rght': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '100'}),
            'tree_id': ('django.db.models.fields.PositiveIntegerField', [], {'db_index': 'True'})
        },
        'products.product': {
            'Meta': {'object_name': 'Product'},
            'category': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['products.Category']", 'null': 'True'}),
            'created': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'db_index': 'True', 'blank': 'True'}),
            'description': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'description_de': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'description_en': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'description_tr': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'detail': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'detail_de': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'detail_en': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'detail_tr': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'engine': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'engine_de': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'engine_en': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'engine_tr': ('django.db.models.fields.TextField', [], {'null': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.files.ImageField', [], {'max_length': '100'}),
            'meta_description': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_de': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_en': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_description_tr': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_de': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_en': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'meta_keywords_tr': ('django.db.models.fields.CharField', [], {'max_length': '200', 'null': 'True', 'blank': 'True'}),
            'oem': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '100'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '200'}),
            'type': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'type_de': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'type_en': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'type_tr': ('tinymce.models.HTMLField', [], {'null': 'True', 'blank': 'True'}),
            'yuksel_no': ('django.db.models.fields.CharField', [], {'max_length': '250'})
        },
        'products.producttype': {
            'Meta': {'object_name': 'ProductType'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True'}),
            'name_de': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'name_en': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'name_tr': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True', 'blank': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'max_length': '100'})
        }
    }

    complete_apps = ['products']