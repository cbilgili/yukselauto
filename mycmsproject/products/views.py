# Create your views here.
from django.template import RequestContext
from mycmsproject.products.models import Product, Brand, Category
from django.shortcuts import render_to_response, get_object_or_404

def index(request):
    return render_to_response('products/index.html', {
        'products': Product.objects.all(),
        'brands': Brand.objects.all()[:5],
        'category_all': Category.objects.all()
    }, context_instance=RequestContext(request))

#
def view_product(request, slug):
    return render_to_response('products/view_product.html', {
        'product': get_object_or_404(Product, slug=slug),
        'category_all': Category.objects.all()
    }, context_instance=RequestContext(request))

#
#def view_category(request, slug):
#    category = get_object_or_404(Category, slug=slug)
#    return render_to_response('view_category.html', {
#        'category': category,
#        'posts': Blog.objects.filter(category=category)[:5]
#    })
