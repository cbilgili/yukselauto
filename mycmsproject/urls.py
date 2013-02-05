from django.conf.urls.defaults import *
from django.contrib import admin
from django.conf import settings

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('cms.urls')),
    url(r'^djangojs/', include('djangojs.urls')),
)

if settings.DEBUG:
    urlpatterns = patterns('',
        url(r'^media/(?P<path>.*)$', 'django.views.static.serve',
        {'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),
        url(r'', include('django.contrib.staticfiles.urls')),
        url(r'^rosetta/', include('rosetta.urls')),
        (r'^selectable/', include('selectable.urls')),
        (r'^forms/', include('form_designer.urls')),
    ) + urlpatterns