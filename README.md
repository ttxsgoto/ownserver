# ownserver
---
**0.功能说明**
 - 实现资产的统计和查询功能
 - 控制权限，不同用户拥有不同的权限

**1.安装相应的模块**
```pip install -r requirements.txt```

**2.进入数据创建数据库，并导入ownserver.sql**
```
mysql> create database ownserver  default character set  utf8;
mysql> use ownserver
mysql> source server.sql
```

**3.运行程序**
``` python manage.py runserver 0.0.0.0:8080``` 

**4.访问url，输入用户名密码： admin admin**

**5.目前功能还在完善中，只完成了IDC管理和用户管理**

	- IDC管理包括：
		（1）设备信息：资产主要信息的查询添加修改删除
		（2）机房设置：机房信息，机房位置，联系人等
		（3）设备类型：设备类型定义，服务器、路由器等
		（4）设备状态：设备当前状态，正常、下架、备用等
		（5）购买方式：设备购买的方式，自建机房、云服务器等
		（6）统计信息(暂未开放)
	- 用户管理：
		（1）用户管理：用户的添加删除修改
		（2）角色管理：定义用户组和拥有的权限
		（3）权限管理：定义权限名称和权限url