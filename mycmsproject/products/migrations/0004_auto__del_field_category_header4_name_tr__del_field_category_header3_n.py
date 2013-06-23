# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Category.header4_name_tr'
        db.delete_column('products_category', 'header4_name_tr')

        # Deleting field 'Category.header3_name_tr'
        db.delete_column('products_category', 'header3_name_tr')

        # Deleting field 'Category.header2_name'
        db.delete_column('products_category', 'header2_name')

        # Deleting field 'Category.show_image'
        db.delete_column('products_category', 'show_image')

        # Deleting field 'Category.header3_name'
        db.delete_column('products_category', 'header3_name')

        # Deleting field 'Category.header1_name_tr'
        db.delete_column('products_category', 'header1_name_tr')

        # Deleting field 'Category.header4_name'
        db.delete_column('products_category', 'header4_name')

        # Deleting field 'Category.header1_name'
        db.delete_column('products_category', 'header1_name')

        # Deleting field 'Category.header2_name_tr'
        db.delete_column('products_category', 'header2_name_tr')

        # Deleting field 'Category.header3_name_de'
        db.delete_column('products_category', 'header3_name_de')

        # Deleting field 'Category.header4_name_de'
        db.delete_column('products_category', 'header4_name_de')

        # Deleting field 'Category.header3_name_en'
        db.delete_column('products_category', 'header3_name_en')

        # Deleting field 'Category.header4_name_en'
        db.delete_column('products_category', 'header4_name_en')

        # Deleting field 'Category.header1_name_de'
        db.delete_column('products_category', 'header1_name_de')

        # Deleting field 'Category.header1_name_en'
        db.delete_column('products_category', 'header1_name_en')

        # Deleting field 'Category.header2_name_en'
        db.delete_column('products_category', 'header2_name_en')

        # Deleting field 'Category.header2_name_de'
        db.delete_column('products_category', 'header2_name_de')


    def backwards(self, orm):
        # Adding field 'Category.header4_name_tr'
        db.add_column('products_category', 'header4_name_tr',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header3_name_tr'
        db.add_column('products_category', 'header3_name_tr',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header2_name'
        db.add_column('products_category', 'header2_name',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.show_image'
        db.add_column('products_category', 'show_image',
                      self.gf('django.db.models.fields.BooleanField')(default=False),
                      keep_default=False)

        # Adding field 'Category.header3_name'
        db.add_column('products_category', 'header3_name',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header1_name_tr'
        db.add_column('products_category', 'header1_name_tr',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header4_name'
        db.add_column('products_category', 'header4_name',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header1_name'
        db.add_column('products_category', 'header1_name',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header2_name_tr'
        db.add_column('products_category', 'header2_name_tr',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header3_name_de'
        db.add_column('products_category', 'header3_name_de',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header4_name_de'
        db.add_column('products_category', 'header4_name_de',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header3_name_en'
        db.add_column('products_category', 'header3_name_en',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header4_name_en'
        db.add_column('products_category', 'header4_name_en',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header1_name_de'
        db.add_column('products_category', 'header1_name_de',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header1_name_en'
        db.add_column('products_category', 'header1_name_en',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header2_name_en'
        db.add_column('products_category', 'header2_name_en',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)

        # Adding field 'Category.header2_name_de'
        db.add_column('products_category', 'header2_name_de',
                      self.gf('django.db.models.fields.CharField')(max_length=200, null=True, blank=True),
                      keep_default=False)


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