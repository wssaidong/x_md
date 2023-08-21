

```
ETCD_VERSION='3.5.4'
wget https://github.com/etcd-io/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz
tar -xvf etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
  cd etcd-v${ETCD_VERSION}-linux-amd64 && \
  sudo cp -a etcd etcdctl /usr/bin/
nohup etcd >/tmp/etcd.log 2>&1 &

```

```
name: node1
data-dir: /var/lib/etcd
initial-cluster-token: my-etcd-cluster
initial-cluster: node1=https://ip1:2380,node2=https://ip2:2380,node3=https://ip3:2380
initial-advertise-peer-urls: https://ip1:2380
listen-peer-urls: https://ip1:2380
listen-client-urls: https://ip1:2379,http://127.0.0.1:2379


```


```


etcd --config-file /path/to/etcd-config.yaml


etcdctl member list


```