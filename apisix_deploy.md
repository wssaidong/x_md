
## Deploy Apache APISIX on macOS

Install Dependencies:
Before deploying Apache APISIX, ensure you have the necessary dependencies installed on your macOS. These dependencies typically include:

Homebrew: A package manager for macOS.
OpenResty: An Nginx-based web platform with extensions.
etcd: A distributed key-value store used by Apache APISIX.
LuaJIT: A Just-In-Time Compiler for Lua.

### You can use Homebrew to install most of these dependencies

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### install dependencies

```
brew install lua@5.1

 brew install openresty/brew/openresty

 brew install rust

 brew install luarocks

```

### Clone APISIX Source Code
```
git clone https://github.com/apache/apisix.git
```

### Compile and Install APISIX

```
cd apisix
make deps
```

### Start APISIX

```
./bin/apisix start
```