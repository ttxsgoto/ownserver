from django.conf.urls import include, url ,patterns
#from UserManage.views import *

# urlpatterns = [
#     url(r'^admin/', include(admin.site.urls)),
# ]
urlpatterns = patterns('UserManage.views',
        url(r'^login/$', 'user.LoginUser' ,name='login'),
        url(r'^logout/$', 'user.LogoutUser' ,name='logout'),
        
        url(r'^user_add/$', 'user.AddUser' ,name='user_add'),
        url(r'^user_list/$', 'user.ListUser' ,name='user_list'),
        url(r'^user_edit/$', 'user.EditUser' ,name='user_edit'),
        url(r'^user_del/$', 'user.DeleteUser' ,name='user_del'),
        url(r'^user_save/$', 'user.SaveUser' ,name='user_save'),
        
        url(r'^user_changepwd/$', 'user.ChangePassword' ,name='user_changepwd'),
        url(r'^user_resetpwd/$', 'user.ResetPassword' ,name='user_resetpwd'),
        
        url(r'^role_add/$', 'role.AddRole' ,name='role_add'),
        url(r'^role_list/$', 'role.ListRole' ,name='role_list'),
        url(r'^role_edit/$', 'role.EditRole' ,name='role_edit'),
        url(r'^role_del/$', 'role.DeleteRole' ,name='role_del'),
        url(r'^role_save/$', 'role.SaveRole' ,name='role_save'),
        
        url(r'^permission_deny/$', 'permission.NoPermission' ,name='permission_deny'),
        url(r'^permission_add/$', 'permission.AddPermission' ,name='permission_add'),
        url(r'^permission_list/$', 'permission.ListPermission' ,name='permission_list'),
        url(r'^permission_deit/$', 'permission.EditPermission' ,name='permission_deit'),
        url(r'^permission_del/$', 'permission.DeletePermission' ,name='permission_del'),
        url(r'^permission_save/$', 'permission.SavePermission' ,name='permission_save'),

)