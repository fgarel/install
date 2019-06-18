#-*- coding: utf-8 -*-

from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from datetime import datetime

def home(request):
    text = """<h1>Bienvenu sur mon blog !<h1>
    <p>Nous vous souhaitons le bonjour !<p>"""
    return HttpResponse(text)

def show_article(request, id_article):
    """Vue qui affiche un article selon son identifiant. Son ID est le second
    paramètre de la fonction ( le premietr étant tj request) """
    text = "vous avez demandé l'article n°{} !".format(id_article)
    if int(id_article) > 100:
        raise Http404
    if int(id_article) > 10:
        return redirect('blog.views.show_article', id_article=2)
    if int(id_article) > 3:
        return redirect(redirection)

    return render(request, 'template_show_article.html', locals())
    #return HttpResponse(text)

def list_articles(request, year=2017, month=6):
    """article du mois"""
    text = "vous avez demandé l'article du {}/{} !".format(month, year)
    return redirect("http://openclassroms.com")

def redirection(request):
    return HttpResponse(u"Vous avez été redirigé!")

def current_date(request):
    return render(request, 'template_current_date.html', {'current_date': datetime.now()})
    #return render(request, '/home/commun/Documents/pcrs/blog/templates/tpl.html', {'current_date': datetime.now()})
    #return render(request, '/home/commun/Documents/pcrs/blog/templates/tpl.html', {'current_date': datetime.now()})

def addition(request, nombre1, nombre2):
    total = int(nombre1) + int(nombre2)
    return render(request, 'template_addition.html', locals())
