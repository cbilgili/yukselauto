from modeltranslation.translator import translator, TranslationOptions
from models import ProductType, Category

class ProductTypeTranslationOptions(TranslationOptions):
    fields = ('name',)

class CategoryTranslationOptions(TranslationOptions):
    fields = ('name',)

translator.register(ProductType, ProductTypeTranslationOptions)
translator.register(Category, CategoryTranslationOptions)