from cms.app_base import CMSApp
from cms.apphook_pool import apphook_pool
from django.utils.translation import ugettext_lazy as _

class ProductsApp(CMSApp):
    name = _("Product App") # give your app a name, this is required
    urls = ["products.urls"] # link your app to url configuration(s)

apphook_pool.register(ProductsApp) # register your app