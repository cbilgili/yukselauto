from django.contrib import admin
from products.models import Product, Category, ProductType
from mptt.admin import MPTTModelAdmin

class ProductAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}

class ProductTypeAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('name',)}

class CategoryAdmin(MPTTModelAdmin):
    prepopulated_fields = {'slug': ('name',)}
    sortable_field_name = "position"
    list_display = ('name', 'product_type')


admin.site.register(Product, ProductAdmin)
admin.site.register(Category, CategoryAdmin)
admin.site.register(ProductType, ProductTypeAdmin)