# Create your views here.
# coding: utf-8
from django.template import RequestContext
from products.models import Product, Category, ProductType
from django.shortcuts import render_to_response, get_object_or_404, get_list_or_404
from django.views.decorators.csrf import csrf_exempt
from django.core.mail import send_mail, EmailMessage
from django.core.exceptions import ObjectDoesNotExist

def index(request):

    if is_import_category(request):
        product_type = product_type_obj = ProductType.objects.get(pk=1)
        products = Product.objects.filter(category__product_type_id=product_type.id).order_by('-id')[:15]
    else:
        product_type = product_type_obj = ProductType.objects.get(pk=2)
        products = Product.objects.filter(category__product_type_id=product_type.id).order_by('-id')[:15]


    return render_to_response('products/index.html', {
        'products': products,
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))

#
def view_product(request, product_type, product_id, slug):
    return render_to_response('products/product_view.html', {
        'product': get_object_or_404(Product, pk=product_id),
        'category_all': get_category_all(request)
    }, context_instance=RequestContext(request))


def view_category(request, category_id, parentslug, slug, product_type):
    product_type_obj = ProductType.objects.get(slug=product_type)
    category = Category.objects.get(id=category_id)

    return render_to_response('products/category_view.html', {
        'products': category.product_set.all(),
        'category': get_object_or_404(Category, pk=category_id),
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
    try:
        if oem_query:
            results = Product.objects.filter(oem__icontains=oem_query).order_by('category__id', 'yuksel_no') | Product.objects.filter(yuksel_no__icontains=oem_query).order_by('category__id', 'yuksel_no')
            if results.count() > 0:
                category = results[0].category
            else:
                category = None
        else:
            category_id = request.GET.get('marka')
            category = Category.objects.get(pk=category_id)
            oem_query = category.name
            results = Product.objects.filter(category_id = category_id).order_by('category__id', 'yuksel_no')
    except Exception:
        results = None
        category = None
    root_categories = Category.objects.filter(product_type_id = 2, level = 0)


    return render_to_response('products/search_results.html', {
        'products': results,
        'term' : oem_query,
        'category' : category,
        'root_categories': root_categories
    }, context_instance=RequestContext(request))
@csrf_exempt
def send_form(request):
    a = '<html><body><table>'
    for key, value in request.POST.iteritems():
        a+= '<tr><td><strong>'+key+'</strong></td><td>'+value+'</td></tr>'
    a += '</table></body></html>'
    send_mail('Yüksel Oto Form', a, 'info@yukselautomotive.com',
        ['info@yukselautomotive.com'], fail_silently=False)
    subject, from_email, to = 'Yüksel Oto Form', 'info@yukselautomotive.com', 'info@yukselautomotive.com'
    html_content = a
    msg = EmailMessage(subject, html_content, from_email, [to])
    msg.content_subtype = "html"  # Main content is now text/html
    msg.send()
    return render_to_response('products/send_form.html', {'form':a}, context_instance=RequestContext(request))



#
#def view_category(request, slug):
#    category = get_object_or_404(Category, slug=slug)
#    return render_to_response('category_view.html', {
#        'category': category,
#        'posts': Blog.objects.filter(category=category)[:5]
#    })
