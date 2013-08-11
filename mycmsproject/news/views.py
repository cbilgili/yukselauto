# Create your views here.
# coding: utf-8
from django.template import RequestContext
from django.http import Http404
from django.shortcuts import render_to_response, get_object_or_404, get_list_or_404
from models import News


def index(request):
    return render_to_response('news/index.html', {
        'news_all': News.objects.all().order_by('-id')
    }, context_instance=RequestContext(request))

def detail(request, news_id):
    try:
        news = News.objects.get(pk=news_id)
    except News.DoesNotExist:
        raise Http404
    return render_to_response('news/detail.html', {
        'news': news
    }, context_instance=RequestContext(request))