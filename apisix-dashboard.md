
```
docker pull apache/apisix-dashboard
docker run -d --name dashboard \
           -p 9000:9000        \
           -v <CONFIG_FILE>:/usr/local/apisix-dashboard/conf/conf.yaml \
           apache/apisix-dashboard

```
