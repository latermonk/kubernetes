
# 安装指南


##   安装之前

###  安装docker 指定版本

查看可用的docker版本

[http://rancher.com/docs/rancher/v1.6/en/hosts/#supported-docker-versions](http://rancher.com/docs/rancher/v1.6/en/hosts/#supported-docker-versions)

###  设置docker cn 加速

####  方法1[好用]

直接修改配置文件

```
/usr/lib/systemd/system/docker.service
```
添加：


```
--registry-mirrors=https://registry.docker-cn.com
```
即可。



####  方法2[不好用]



参考：
https://www.docker-cn.com/registry-mirror


vim /etc/docker/daemon.json


```
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
```




##   安装harbor   

参考harbor安装指南  


##   安装 Rancher    

参考：
http://rancher.com/docs/rancher/v1.6/zh/installing-rancher/installing-server/


单机安装方法：

###  下来镜像
```
 docker run -d --restart=unless-stopped -p 8080:8080 rancher/server  
```
   
 
 
 然后浏览器打开 8080端口即可

###  添加主机及其它操作

