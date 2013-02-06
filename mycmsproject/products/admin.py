from django.contrib import admin
from products.models import Product, Category, ProductType
from mptt.admin import MPTTModelAdmin
from modeltranslation.admin import TranslationAdmin

class ProductAdmin(TranslationAdmin):
    prepopulated_fields = {'slug': ('title',)}

    class Media:
        js = (
            'modeltranslation/js/force_jquery.js',
            'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js',
            'modeltranslation/js/tabbed_translation_fields.js',
            )
        css = {
            'screen': ('modeltranslation/css/tabbed_translation_fields.css',),
            }

class ProductTypeAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}


class CategoryAdmin(MPTTModelAdmin, TranslationAdmin):
    prepopulated_fields = {'slug': ('name',)}
    sortable_field_name = "position"
    list_display = ('name', 'product_type')

    class Media:
        js = (
            'modeltranslation/js/force_jquery.js',
            'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.24/jquery-ui.min.js',
            'modeltranslation/js/tabbed_translation_fields.js',
            )
        css = {
            'screen': ('modeltranslation/css/tabbed_translation_fields.css',),
            }


admin.site.register(Product, ProductAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(ProductType, ProductTypeAdmin)