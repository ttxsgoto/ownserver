"""ownserver URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url ,patterns
from django.contrib import admin

urlpatterns = patterns('ownserver.views',
        url(r'^$', 'index',name='index'),
        #url(r'^login/$', 'login', name='login'),
        url(r'serverinfo/', include('serverinfo.urls')),
        url(r'accounts/', include('UserManage.urls')),
)
