

#  常见源

```
阿里云： 1.7.5

cat >> /etc/yum.repos.d/kubernetes.repo <<EOF
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/
enabled=1
gpgcheck=0
EOF
```

#  安装指南

##  开始之前  =>
 [官方参考页面](https://kubernetes.io/docs/setup/independent/install-kubeadm/)


**系统要求**
* Ubuntu 16.04 / CentOS 7
* 2 cpus & 2G RA< 
* 节点之前完全的访问权限
* 每个节点都有唯一的 hostname、 MAC address  &  product_uuid

```
查看命令：

ip link

ifconfig -a
```

```
uuid:

cat /sys/class/dmi/id/product_uuid


```

* 开放需要的端口


* 关闭 SWAP

```
swapoff  -a

```



## 安装 kubeadm, kubelet 和 kubectl
`kubeadm`: the command to bootstrap the cluster.
`kubelet`: the component that runs on all of the machines in your cluster and does things like starting pods and containers.
`kubectl`: the command line util to talk to your cluster.



###  安装docker

###  安装 kubeadm kubelet kubectl
> kube不会管理 kubelet & kubectl ,所以你要自己安装和管理



##  初始化master节点


## 安装 pod 网络


## 加入你的节点

