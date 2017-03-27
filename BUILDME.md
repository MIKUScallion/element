#  开发和构建

## 开发

```shell
# 指定主题 THEME=bonyfish || sunfish，default is bonyfish.
export THEME=bonyfish
npm run dev
```

## 构建 DEMO 和发布到内网 212 服务器

```shell
# 使用 make 里预定义的命令
make
make deploy-bonyfish-212
# make deploy-sunfish-212
```

## 构建库和发布到 common-module 中

```shell
export THEME=bonyfish
make dist
make deploy-bonyfish-common-module
# make deploy-sunfish-common-module
```

## 同步主题

一些主题可能只是修改了配置文件，比如 sunfish 只是 bonyfish 修改了颜色配置之后得到的。
我们以 bonyfish 为主进行开发，希望将除了配置之外的地方同步到 sunfish 中。可以使用下面命令。

```shell
make sync-theme-sunfish-form-bonyfish
```

## 添加主题

*  复制 sunfish 命名成 xxxfish
*  修改 /build/bin/gen-cssfile.js 添加 theme-xxxfish
*  添加 xxxfish.js 文件到 /examples/themes/
*  修改 Makefile 添加些合适的命令

## 其他

以上是一些常用的命令，欢迎写一些更好用的命令使得开发流程更简单。
