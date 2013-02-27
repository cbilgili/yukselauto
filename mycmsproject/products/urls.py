from django.conf.urls.defaults import patterns, url

from products import views
from products.views import search_sub_category, search_product


urlpatterns = patterns('',
    # ex: /polls/
    url(r'^$', views.index, name='index'),
    url(
        r'^(?P<product_type>[^\/]+)/(?P<category_id>[^\/]+)/(?P<parentslug>[^\/]+)/(?P<slug>[^\.]+).html',
        'products.views.view_category',
        name='view_category_entry'),
    url(
        r'^(?P<product_type>[^\/]+)/(?P<slug>[^\.]+).html',
        'products.views.view_product',
        name='view_product_entry'),
    # Process a category
    url(r'^ajax/(?P<category_id>\d+)/$',
        search_sub_category,
        name='search_sub_category'),
    url(r'^search/$',
        search_product),

    # ex: /polls/5/
    #url(r'^(?P<poll_id>\d+)/$', views.detail, name='detail'),
    # ex: /polls/5/results/
    #url(r'^(?P<poll_id>\d+)/results/$', views.results, name='results'),
    # ex: /polls/5/vote/
    #url(r'^(?P<poll_id>\d+)/vote/$', views.vote, name='vote'),
)