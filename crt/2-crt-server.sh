## 生成 server 端的私钥: server.key

openssl genrsa -out server.key 4096

## 生成 server 端数字证书请求: server.csr

openssl req -new -key server.key -out server.csr

## 用 CA 私钥签发 server 的数字证书: server.crt

openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 3650