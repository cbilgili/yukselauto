# Create your views here.
from django.template import RequestContext
from products.models import Product, Category, ProductType
from django.shortcuts import render_to_response, get_object_or_404

def index(request):


    return render_to_response('products/index.html', {
        'products': Product.objects.all()[:15],
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))

#
def view_product(request, slug):
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

"""
Bu methodla ürünlerin türüne göre sol menü için kategori verisi çekilir
"""
def get_category_all(request):
    page_id = request.current_page.reverse_id
    if page_id == 'ithal_urunler':
        product_type_obj = ProductType.objects.get(pk=1)
    else:
        product_type_obj = ProductType.objects.get(pk=2)
    return Category.objects.filter(product_type=product_type_obj)



#
#def view_category(request, slug):
#    category = get_object_or_404(Category, slug=slug)
#    return render_to_response('category_view.html', {
#        'category': category,
#        'posts': Blog.objects.filter(category=category)[:5]
#    })
