# DDD 

└── src
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── chatchatabc
    │   │           └── cargo
    │   │               ├── application - 应用层六边形架构
    │   │               │   ├── dubbo
    │   │               │   ├── graphql
    │   │               │   ├── grpc
    │   │               │   ├── rest
    │   │               │   └── web
    │   │               ├── domain 
    │   │               │   ├── error
    │   │               │   ├── event
    │   │               │   ├── factory
    │   │               │   ├── model
    │   │               │   ├── repository
    │   │               │   ├── service
    │   │               │   └── specification - 规范，校验
    │   │               ├── impl
    │   │               │   ├── application
    │   │               │   │   └── dubbo
    │   │               │   ├── domain
    │   │               │   │   ├── event
    │   │               │   │   ├── factory
    │   │               │   │   ├── repository
    │   │               │   │   ├── service
    │   │               │   │   └── specification
    │   │               │   └── infra
    │   │               └── infra - 基础建设(缓存)
    │   └── resources
    ├── site
    │   └── images
    └── test
        ├── java
        │   └── com
        │       └── chatchatabc
        │           └── cargo
        │               └── impl
        │                   ├── domain
        │                   │   ├── repository
        │                   │   └── service
        │                   └── infra
        └── resources
