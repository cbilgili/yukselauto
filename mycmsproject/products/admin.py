from django.contrib import admin
from mycmsproject.products.models import Product, Brand

class ProductAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}

class BrandAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}



admin.site.register(Product, ProductAdmin)
admin.site.register(Brand, BrandAdmin)