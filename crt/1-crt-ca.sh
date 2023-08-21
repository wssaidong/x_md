
## 生成CA私钥: ca.key

openssl genrsa -out ca.key 4096

## 生成一个 CA的数字证书: ca.crt

openssl req -new -x509 -days 3650 -key ca.key -out ca.crt
