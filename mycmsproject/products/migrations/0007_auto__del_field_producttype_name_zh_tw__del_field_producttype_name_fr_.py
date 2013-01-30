# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'ProductType.name_zh_tw'
        db.delete_column('products_producttype', 'name_zh_tw')

        # Deleting field 'ProductType.name_fr'
        db.delete_column('products_producttype', 'name_fr')

        # Deleting field 'ProductType.name_sr_latn'
        db.delete_column('products_producttype', 'name_sr_latn')

        # Deleting field 'ProductType.name_es_ar'
        db.delete_column('products_producttype', 'name_es_ar')

        # Deleting field 'ProductType.name_fy_nl'
        db.delete_column('products_producttype', 'name_fy_nl')

        # Deleting field 'ProductType.name_fa'
        db.delete_column('products_producttype', 'name_fa')

        # Deleting field 'ProductType.name_de'
        db.delete_column('products_producttype', 'name_de')

        # Deleting field 'ProductType.name_no'
        db.delete_column('products_producttype', 'name_no')

        # Deleting field 'ProductType.name_da'
        db.delete_column('products_producttype', 'name_da')

        # Deleting field 'ProductType.name_fi'
        db.delete_column('products_producttype', 'name_fi')

        # Deleting field 'ProductType.name_zh_cn'
        db.delete_column('products_producttype', 'name_zh_cn')

        # Deleting field 'ProductType.name_ml'
        db.delete_column('products_producttype', 'name_ml')

        # Deleting field 'ProductType.name_pl'
        db.delete_column('products_producttype', 'name_pl')

        # Deleting field 'ProductType.name_es_mx'
        db.delete_column('products_producttype', 'name_es_mx')

        # Deleting field 'ProductType.name_ca'
        db.delete_column('products_producttype', 'name_ca')

        # Deleting field 'ProductType.name_it'
        db.delete_column('products_producttype', 'name_it')

        # Deleting field 'ProductType.name_ta'
        db.delete_column('products_producttype', 'name_ta')

        # Deleting field 'ProductType.name_mk'
        db.delete_column('products_producttype', 'name_mk')

        # Deleting field 'ProductType.name_vi'
        db.delete_column('products_producttype', 'name_vi')

        # Deleting field 'ProductType.name_pa'
        db.delete_column('products_producttype', 'name_pa')

        # Deleting field 'ProductType.name_nb'
        db.delete_column('products_producttype', 'name_nb')

        # Deleting field 'ProductType.name_th'
        db.delete_column('products_producttype', 'name_th')

        # Deleting field 'ProductType.name_cs'
        db.delete_column('products_producttype', 'name_cs')

        # Deleting field 'ProductType.name_id'
        db.delete_column('products_producttype', 'name_id')

        # Deleting field 'ProductType.name_ko'
        db.delete_column('products_producttype', 'name_ko')

        # Deleting field 'ProductType.name_km'
        db.delete_column('products_producttype', 'name_km')

        # Deleting field 'ProductType.name_kn'
        db.delete_column('products_producttype', 'name_kn')

        # Deleting field 'ProductType.name_ro'
        db.delete_column('products_producttype', 'name_ro')

        # Deleting field 'ProductType.name_cy'
        db.delete_column('products_producttype', 'name_cy')

        # Deleting field 'ProductType.name_pt'
        db.delete_column('products_producttype', 'name_pt')

        # Deleting field 'ProductType.name_et'
        db.delete_column('products_producttype', 'name_et')

        # Deleting field 'ProductType.name_eu'
        db.delete_column('products_producttype', 'name_eu')

        # Deleting field 'ProductType.name_az'
        db.delete_column('products_producttype', 'name_az')

        # Deleting field 'ProductType.name_te'
        db.delete_column('products_producttype', 'name_te')

        # Deleting field 'ProductType.name_he'
        db.delete_column('products_producttype', 'name_he')

        # Deleting field 'ProductType.name_es'
        db.delete_column('products_producttype', 'name_es')

        # Deleting field 'ProductType.name_ar'
        db.delete_column('products_producttype', 'name_ar')

        # Deleting field 'ProductType.name_mn'
        db.delete_column('products_producttype', 'name_mn')

        # Deleting field 'ProductType.name_ru'
        db.delete_column('products_producttype', 'name_ru')

        # Deleting field 'ProductType.name_gl'
        db.delete_column('products_producttype', 'name_gl')

        # Deleting field 'ProductType.name_is'
        db.delete_column('products_producttype', 'name_is')

        # Deleting field 'ProductType.name_en_gb'
        db.delete_column('products_producttype', 'name_en_gb')

        # Deleting field 'ProductType.name_sk'
        db.delete_column('products_producttype', 'name_sk')

        # Deleting field 'ProductType.name_el'
        db.delete_column('products_producttype', 'name_el')

        # Deleting field 'ProductType.name_en'
        db.delete_column('products_producttype', 'name_en')

        # Deleting field 'ProductType.name_ur'
        db.delete_column('products_producttype', 'name_ur')

        # Deleting field 'ProductType.name_hi'
        db.delete_column('products_producttype', 'name_hi')

        # Deleting field 'ProductType.name_ga'
        db.delete_column('products_producttype', 'name_ga')

        # Deleting field 'ProductType.name_sr'
        db.delete_column('products_producttype', 'name_sr')

        # Deleting field 'ProductType.name_hr'
        db.delete_column('products_producttype', 'name_hr')

        # Deleting field 'ProductType.name_bg'
        db.delete_column('products_producttype', 'name_bg')

        # Deleting field 'ProductType.name_ka'
        db.delete_column('products_producttype', 'name_ka')

        # Deleting field 'ProductType.name_sv'
        db.delete_column('products_producttype', 'name_sv')

        # Deleting field 'ProductType.name_nl'
        db.delete_column('products_producttype', 'name_nl')

        # Deleting field 'ProductType.name_hu'
        db.delete_column('products_producttype', 'name_hu')

        # Deleting field 'ProductType.name_nn'
        db.delete_column('products_producttype', 'name_nn')

        # Deleting field 'ProductType.name_bn'
        db.delete_column('products_producttype', 'name_bn')

        # Deleting field 'ProductType.name_pt_br'
        db.delete_column('products_producttype', 'name_pt_br')

        # Deleting field 'ProductType.name_sq'
        db.delete_column('products_producttype', 'name_sq')

        # Deleting field 'ProductType.name_uk'
        db.delete_column('products_producttype', 'name_uk')

        # Deleting field 'ProductType.name_bs'
        db.delete_column('products_producttype', 'name_bs')

        # Deleting field 'ProductType.name_lv'
        db.delete_column('products_producttype', 'name_lv')

        # Deleting field 'ProductType.name_es_ni'
        db.delete_column('products_producttype', 'name_es_ni')

        # Deleting field 'ProductType.name_lt'
        db.delete_column('products_producttype', 'name_lt')

        # Deleting field 'ProductType.name_ja'
        db.delete_column('products_producttype', 'name_ja')

        # Deleting field 'ProductType.name_tr'
        db.delete_column('products_producttype', 'name_tr')

        # Deleting field 'ProductType.name_sl'
        db.delete_column('products_producttype', 'name_sl')

        # Adding field 'ProductType.name'
        db.add_column('products_producttype', 'name',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True),
                      keep_default=False)


    def backwards(self, orm):
        # Adding field 'ProductType.name_zh_tw'
        db.add_column('products_producttype', 'name_zh_tw',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_fr'
        db.add_column('products_producttype', 'name_fr',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sr_latn'
        db.add_column('products_producttype', 'name_sr_latn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_es_ar'
        db.add_column('products_producttype', 'name_es_ar',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_fy_nl'
        db.add_column('products_producttype', 'name_fy_nl',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_fa'
        db.add_column('products_producttype', 'name_fa',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_de'
        db.add_column('products_producttype', 'name_de',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_no'
        db.add_column('products_producttype', 'name_no',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_da'
        db.add_column('products_producttype', 'name_da',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_fi'
        db.add_column('products_producttype', 'name_fi',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_zh_cn'
        db.add_column('products_producttype', 'name_zh_cn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ml'
        db.add_column('products_producttype', 'name_ml',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_pl'
        db.add_column('products_producttype', 'name_pl',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_es_mx'
        db.add_column('products_producttype', 'name_es_mx',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ca'
        db.add_column('products_producttype', 'name_ca',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_it'
        db.add_column('products_producttype', 'name_it',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ta'
        db.add_column('products_producttype', 'name_ta',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_mk'
        db.add_column('products_producttype', 'name_mk',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_vi'
        db.add_column('products_producttype', 'name_vi',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_pa'
        db.add_column('products_producttype', 'name_pa',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_nb'
        db.add_column('products_producttype', 'name_nb',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_th'
        db.add_column('products_producttype', 'name_th',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_cs'
        db.add_column('products_producttype', 'name_cs',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_id'
        db.add_column('products_producttype', 'name_id',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ko'
        db.add_column('products_producttype', 'name_ko',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_km'
        db.add_column('products_producttype', 'name_km',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_kn'
        db.add_column('products_producttype', 'name_kn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ro'
        db.add_column('products_producttype', 'name_ro',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_cy'
        db.add_column('products_producttype', 'name_cy',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_pt'
        db.add_column('products_producttype', 'name_pt',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_et'
        db.add_column('products_producttype', 'name_et',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_eu'
        db.add_column('products_producttype', 'name_eu',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_az'
        db.add_column('products_producttype', 'name_az',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_te'
        db.add_column('products_producttype', 'name_te',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_he'
        db.add_column('products_producttype', 'name_he',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_es'
        db.add_column('products_producttype', 'name_es',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ar'
        db.add_column('products_producttype', 'name_ar',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_mn'
        db.add_column('products_producttype', 'name_mn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ru'
        db.add_column('products_producttype', 'name_ru',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_gl'
        db.add_column('products_producttype', 'name_gl',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_is'
        db.add_column('products_producttype', 'name_is',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_en_gb'
        db.add_column('products_producttype', 'name_en_gb',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sk'
        db.add_column('products_producttype', 'name_sk',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_el'
        db.add_column('products_producttype', 'name_el',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_en'
        db.add_column('products_producttype', 'name_en',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ur'
        db.add_column('products_producttype', 'name_ur',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_hi'
        db.add_column('products_producttype', 'name_hi',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ga'
        db.add_column('products_producttype', 'name_ga',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sr'
        db.add_column('products_producttype', 'name_sr',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_hr'
        db.add_column('products_producttype', 'name_hr',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_bg'
        db.add_column('products_producttype', 'name_bg',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ka'
        db.add_column('products_producttype', 'name_ka',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sv'
        db.add_column('products_producttype', 'name_sv',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_nl'
        db.add_column('products_producttype', 'name_nl',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_hu'
        db.add_column('products_producttype', 'name_hu',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_nn'
        db.add_column('products_producttype', 'name_nn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_bn'
        db.add_column('products_producttype', 'name_bn',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_pt_br'
        db.add_column('products_producttype', 'name_pt_br',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sq'
        db.add_column('products_producttype', 'name_sq',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_uk'
        db.add_column('products_producttype', 'name_uk',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_bs'
        db.add_column('products_producttype', 'name_bs',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_lv'
        db.add_column('products_producttype', 'name_lv',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_es_ni'
        db.add_column('products_producttype', 'name_es_ni',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_lt'
        db.add_column('products_producttype', 'name_lt',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_ja'
        db.add_column('products_producttype', 'name_ja',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_tr'
        db.add_column('products_producttype', 'name_tr',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Adding field 'ProductType.name_sl'
        db.add_column('products_producttype', 'name_sl',
                      self.gf('django.db.models.fields.CharField')(max_length=50, null=True, blank=True),
                      keep_default=False)

        # Deleting field 'ProductType.name'
        db.delete_column('products_producttype', 'name')


    models = {
        'products.brand': {
            'Meta': {'object_name': 'Brand'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '100'})
        },
        'products.category': {
            'Meta': {'object_name': 'Category'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            'product_type': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['products.ProductType']", 'null': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '100'})
        },
        'products.product': {
            'Meta': {'object_name': 'Product'},
            'brand': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['products.Brand']"}),
            'category': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['products.Category']", 'null': 'True'}),
            'created': ('django.db.models.fields.DateTimeField', [], {'auto_now_add': 'True', 'db_index': 'True', 'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'slug': ('django.db.models.fields.SlugField', [], {'unique': 'True', 'max_length': '100'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'products.producttype': {
            'Meta': {'object_name': 'ProductType'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50', 'null': 'True'})
        }
    }

    complete_apps = ['products']