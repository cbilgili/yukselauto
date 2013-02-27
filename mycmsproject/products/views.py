# Create your views here.
# coding: utf-8
from django.template import RequestContext
from products.models import Product, Category, ProductType
from django.shortcuts import render_to_response, get_object_or_404, get_list_or_404

def index(request):

    if is_import_category(request):
        product_type = product_type_obj = ProductType.objects.get(pk=1)
        products = Product.objects.filter(category__product_type=product_type)[:15]
    else:
        product_type = product_type_obj = ProductType.objects.get(pk=2)
        products = Product.objects.filter(category__product_type=product_type)[:15]


    return render_to_response('products/index.html', {
        'products': products,
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))

#
def view_product(request, product_type, slug):
    return render_to_response('products/product_view.html', {
        'product': get_object_or_404(Product, slug=slug),
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))


def view_category(request, category_id, parentslug, slug, product_type):
    product_type_obj = ProductType.objects.get(slug=product_type)
    category = Category.objects.get(id=category_id)

    return render_to_response('products/category_view.html', {
        'products': category.product_set.all(),
        'category': get_object_or_404(Category, slug=slug),
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))

def is_import_category(request):
    return request.path.find('import') > 0

def get_category_all(request):
    """Bu methodla ürünlerin türüne göre sol menü için kategori verisi çekilir"""
    #page_id = request.current_page.reverse_id
    if is_import_category(request):
        product_type_obj = ProductType.objects.get(pk=1)
    else:
        product_type_obj = ProductType.objects.get(pk=2)
    return Category.objects.filter(product_type=product_type_obj)


def search_sub_category(request, category_id):
    """ Ajax için gerekli """
    from django.utils import simplejson
    from django.http import HttpResponse

    json = simplejson.dumps([{'pk': o.id,
                              'name': o.name} for o in Category.objects.filter(parent_id=category_id)])
    return HttpResponse(json, mimetype='application/json')

def search_product(request):
    oem_query = request.GET.get('oem')
    if oem_query:
        results = Product.objects.filter(oem__icontains=oem_query)
    else:
        category_id = request.GET.get('marka')
        category = Category.objects.get(pk=category_id)
        oem_query = category.name
        results = Product.objects.filter(category_id = category_id)


    return render_to_response('products/search_results.html', {
        'products': results,
        'term' : oem_query
    }, context_instance=RequestContext(request))





#
#def view_category(request, slug):
#    category = get_object_or_404(Category, slug=slug)
#    return render_to_response('category_view.html', {
#        'category': category,
#        'posts': Blog.objects.filter(category=category)[:5]
#    })
