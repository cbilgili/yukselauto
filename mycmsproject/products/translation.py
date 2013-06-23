from modeltranslation.translator import translator, TranslationOptions
from models import ProductType, Category, Product

class ProductTypeTranslationOptions(TranslationOptions):
    fields = ('name',)


class CategoryTranslationOptions(TranslationOptions):
    fields = ('name', 'meta_keywords', 'meta_description', 'header1_name', 'header2_name', 'header3_name', 'header4_name')


class ProductTranslationOptions(TranslationOptions):
    fields = ('meta_keywords', 'meta_description', 'description', 'detail', 'engine', 'type')

translator.register(ProductType, ProductTypeTranslationOptions)
translator.register(Category, CategoryTranslationOptions)
translator.register(Product, ProductTranslationOptions)