from django.contrib import admin
from mycmsproject.products.models import Product, Brand, Category, ProductType
from mptt.admin import MPTTModelAdmin

class ProductAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}

class BrandAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}

class CategoryAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}





admin.site.register(Product, ProductAdmin)
admin.site.register(Brand, BrandAdmin)
admin.site.register(Category, MPTTModelAdmin)
admin.site.register(ProductType)