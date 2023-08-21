## 生成客户端的私钥与证书: client.key

openssl genrsa -out client.key 4096

## 生成 client 端数字证书请求: client.csr

openssl req -new -key client.key -out client.csr

## 用 CA 私钥签发 client 的数字证书: client.crt

openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out client.crt -days 3650
