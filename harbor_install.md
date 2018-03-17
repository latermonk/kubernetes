# 安装 harbor   

##  安装docker & docker compose    

###   安装docker 

https://docs.docker.com/install/linux/docker-ce/centos/

###   安装 docker compose

(安装指南)[https://docs.docker.com/compose/install/#prerequisites]     

####  三步：   
1.下载镜像       


```
curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```


2.修改属性为可执行    

```
 chmod +x /usr/local/bin/docker-compose 
```
    
 
3.测试可用性 & 查看版本      


```
docker-compose --version       
```
 


##  安装   

###   下载离线或者在线安装包    
https://github.com/vmware/harbor/releases   

###   修改harbor.cfg文件

hostname = x.x.x.x(Your IP address)   
db_password = root123456    

###   正式安装    
sh   install.sh     

查看进度及log:    

```
 docker-compose ps   
```

 


#  配置harbor  

##   浏览器登录 localhost     

账号和密码为：  

admin    
Harbor12345     

##  创建项目并把新建的用户分配到项目

##   docker端的设置   


###   vim /etc/sysconfig/docker 

Add the words: 

OPTIONS="--insecure-registry x.x.xx.x[Your IP address]"


## vim /usr/lib/systemd/system/docker.service

Add the words: EnvironmentFile=-/etc/sysconfig/docker   

Edit the words: ExecStart=/usr/bin/dockerd $OPTIONS

####  systemctl daemon-reload      
####  systemctl restart docker      
####  docker-compose stop      
####  docker-compose start          





reference:

https://github.com/vmware/harbor/issues/2156    

https://github.com/vmware/harbor/issues/987    



