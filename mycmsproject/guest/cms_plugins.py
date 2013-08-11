from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import ugettext_lazy as _
from products.models import *

from models import Hello

class HelloPlugin(CMSPluginBase):
    model = Hello
    name = _("Hello Plugin")
    render_template = "hello_plugin.html"

    def render(self, context, instance, placeholder):
        product_type = ProductType.objects.get(pk=2)
        product = Product.objects.filter(category__product_type=product_type).order_by('?')[:1].get()
#        product = Product.objects.all().order_by('?')[:1].get()
        context['instance'] = instance
        context['product'] = product
        context['product_type'] = product_type.name
        return context

plugin_pool.register_plugin(HelloPlugin)