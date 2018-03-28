> 本文由 [简悦 SimpRead](http://ksria.com/simpread/) 转码， 原文地址 https://www.jianshu.com/p/0e8064e16451

# 实验地址：

[https://kubernetes.io/docs/tutorials/kubernetes-basics/cluster-interactive/](https://link.jianshu.com?t=https%3A%2F%2Fkubernetes.io%2Fdocs%2Ftutorials%2Fkubernetes-basics%2Fcluster-interactive%2F)

# 启动集群

> 创建集群：minikube start

> 查看节点：kubectl get nodes    // 此教程中只有单一的节点

> 查看集群信息：kubectl cluster-info

# 部署应用

部署名为：kubernetes-bootcamp 的应用

> kubectl run kubernetes-bootcamp \    
> 
>  --image=docker.io/jocatalin/kubernetes-bootcamp:v1 \      
> 
>  --port=8080

查看当前 Pod

> kubectl get pods

# 访问应用

> 默认情况下，所有 Pod 只能在集群内部访问。因此要想在外部访问的话，需要做一个映射。
> 
> 把容器的 8080 端口映射到节点的端口
> 
> kubectl expose deployment/kubernetes-bootcamp \    
> 
>  --type="NodePort" \      
> 
>  --port 8080

> 查看应用被映射到节点的那个端口：
> 
>  kubectl get services 
> 
> 访问该端口：
> 
> curl host01:32320（以 kubectl get services 返回的实际端口为准）

# Scale 应用

> 查看副本数量：
> 
> kubectl get deployments

> 把副本数量增加到 3 个：
> 
> kubectl scale deployments/kubernetes-bootcamp --replicas=3

> 查看 Pod 数量：
> 
> kubectl get pods   // 不出问题的话 已经变成 3 个

> 访问应用，发现已经在三个不同的副本之间轮询：
> 
> curl host01:32320

scale down App(把副本降为两个)

> kubectl scale deployments/kubernetes-bootcamp --replicas=2

# **滚动更新**

升级为 v2

> kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2

此时，可以通过  kubectl get pods 命令查看更新过程。

> 再次访问 App:
> 
> curl host01:32320

发现已经是访问的 v2 版本

如果需要回滚到 v1 版本，只需要：

> kubectl rollout undo deployments/kubernetes-bootcamp

* * *

全文完