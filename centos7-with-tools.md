# 构建centos7 工具镜像

## Dockerfile

```
# 使用官方的CentOS 7作为基础镜像
FROM centos:7

# 安装常用工具，例如curl、wget、vim等
RUN yum update -y && \
    yum install -y curl wget vim

# 添加其他工具的安装命令，例如git、net-tools等
RUN yum install -y git net-tools

# 设置容器启动时默认的工作目录
WORKDIR /app

# 执行其他您需要的配置和安装步骤

# 容器启动时运行的命令
CMD ["/bin/bash"]

```

## 构建

```
docker build -t centos7-with-tools .
```

## 运行

```
docker run -it --rm centos7-with-tools
```