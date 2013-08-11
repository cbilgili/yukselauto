from django.contrib import admin
from news.models import News
#from models import News

from modeltranslation.admin import TranslationAdmin

class NewsAdmin(TranslationAdmin):
#    prepopulated_fields = {'slug': ('title',)}

    class Media:
        js = (
            'modeltranslation/js/force_jquery.js',
            'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js',
            'modeltranslation/js/tabbed_translation_fields.js',
            )
        css = {
            'screen': ('modeltranslation/css/tabbed_translation_fields.css',),
            }

admin.site.register(News, NewsAdmin)