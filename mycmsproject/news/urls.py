from django.conf.urls.defaults import patterns, url

from news import views
#from products.views import search_sub_category, search_product, send_form


urlpatterns = patterns('',
    # ex: /polls/
    url(r'^$', views.index, name='view_news_index'),
    url(r'^(?P<news_id>\d+)/$', views.detail, name='view_news_entry'),
#    url(
#        r'^(?P<product_type>[^\/]+)/(?P<category_id>[^\/]+)/(?P<parentslug>[^\/]+)/(?P<slug>[^\.]+).html',
#        'products.views.view_category',
#        name='view_category_entry'),
    # ex: /polls/5/

    # ex: /polls/5/results/
    #url(r'^(?P<poll_id>\d+)/results/$', views.results, name='results'),
    # ex: /polls/5/vote/
    #url(r'^(?P<poll_id>\d+)/vote/$', views.vote, name='vote'),
)