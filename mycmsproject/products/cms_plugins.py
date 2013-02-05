from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import ugettext_lazy as _

from models import Product, Category



class SearchPlugin(CMSPluginBase):
    model = CMSPlugin
    name = _("Product Search Plugin")
    render_template = "search_plugin.html"



    def render(self, context, instance, placeholder):
        root_categories = Category.objects.filter(product_type_id = 2, level = 0)
        context['root_categories'] = root_categories
        return context

plugin_pool.register_plugin(SearchPlugin)