from django.conf.urls import include, url ,patterns
from UserManage.views import *

# urlpatterns = [
#     url(r'^admin/', include(admin.site.urls)),
# ]
urlpatterns = patterns('',
        url(r'^login/$', user.LoginUser ,name='login'),
        url(r'^logout/$', user.LogoutUser ,name='logout'),
        
        url(r'^user_add/$', user.AddUser ,name='user_add'),
        url(r'^user_list/$', user.ListUser ,name='user_list'),
        url(r'^user_edit/(?P<ID>\d+)/$', user.EditUser ,name='user_edit'),
        url(r'^user_del/(?P<ID>\d+)/$', user.DeleteUser ,name='user_del'),
        
        url(r'^user_changepwd/$', user.ChangePassword ,name='user_changepwd'),
        url(r'^user_resetpwd/$', user.ResetPassword ,name='user_resetpwd'),
        
        url(r'^role_add/$', role.AddRole ,name='role_add'),
        url(r'^role_list/$', role.ListRole ,name='role_list'),
        url(r'^role_edit/(?P<ID>\d+)/$', role.EditRole ,name='role_edit'),
        url(r'^role_del/(?P<ID>\d+)/$', role.DeleteRole ,name='role_del'),
        
        url(r'^permission_deny/$', permission.NoPermission ,name='permission_deny'),
        url(r'^permission_add/$', permission.AddPermission ,name='permission_add'),
        url(r'^permission_list/$', permission.ListPermission ,name='permission_list'),
        url(r'^permission_deit/(?P<ID>\d+)/$', permission.EditPermission ,name='permission_deit'),
        url(r'^permission_del/(?P<ID>\d+)/$', permission.DeletePermission ,name='permission_del'),

)