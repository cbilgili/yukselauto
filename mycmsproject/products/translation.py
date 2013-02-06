from modeltranslation.translator import translator, TranslationOptions
from models import ProductType, Category, Product

class ProductTypeTranslationOptions(TranslationOptions):
    fields = ('name',)

class CategoryTranslationOptions(TranslationOptions):
    fields = ('name','meta_keywords','meta_description')

class ProductTranslationOptions(TranslationOptions):
    fields = ('meta_keywords','meta_description',)

translator.register(ProductType, ProductTypeTranslationOptions)
translator.register(Category, CategoryTranslationOptions)
translator.register(Product, ProductTranslationOptions)