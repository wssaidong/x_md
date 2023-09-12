
## ETCD 安装

```
ETCD_VERSION='3.5.4'
wget https://github.com/etcd-io/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz
tar -xvf etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
  cd etcd-v${ETCD_VERSION}-linux-amd64 && \
  sudo cp -a etcd etcdctl /usr/bin/
nohup etcd >/tmp/etcd.log 2>&1 &
```

## 配置 client-cert-auth 认证
```

name: node1
data-dir: /apps/svr/etcd-v3.5.4-linux-amd64/data
initial-cluster-token: my-etcd-cluster
initial-cluster: node1=https://ip:2380
initial-advertise-peer-urls: https://ip:2380
listen-peer-urls: https://ip:2380
listen-client-urls: https://ip:2379
client-transport-security:
  cert-file: /apps/svr/etcd-v3.5.4-linux-amd64/crt/client.crt
  key-file: /apps/svr/etcd-v3.5.4-linux-amd64/crt/client.key
  trusted-ca-file: /apps/svr/etcd-v3.5.4-linux-amd64/crt/ca.crt
  client-cert-auth: true
peer-transport-security:
  cert-file: /apps/svr/etcd-v3.5.4-linux-amd64/crt/client.crt
  key-file: /apps/svr/etcd-v3.5.4-linux-amd64/crt/client.key

```

启动 ETCD

```
 nohup ./etcd --config-file config.yaml > ./etcd.log 2>&1 & 
```

