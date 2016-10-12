#coding: utf-8

from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from ownserver.api import *


# Create your views here.

@login_required(login_url="/accounts/login/")
def index(request):
    username=get_username(request)
    
    #user_dict = request.session.get('is_login',None)
    #print user_dict
#     if user_dict=="None":
#         return HttpResponseRedirect(reverse('login'))
#     else:    
#         username = user_dict.get("username","None")
    #username = user_dict.values()[0]
#     user_dict = request.session.get('is_login',None)
#     if not user_dict:
#         return HttpResponseRedirect(reverse('login'))
#     else:    
#         print "user_dict-------------------",user_dict
    #return HttpResponseRedirect(reverse('device_manage'))
    return my_render('index.html',locals(),request)

    
