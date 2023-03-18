# get ubuntu20-arm64-sysroot

build 一个 arm64版 ubuntu focal，用来导出 ubuntu20-arm64-sysroot，

安装了flutter-elinux需要的相关工具，用于它的交叉编译。

## build 

````
   docker buildx build --platform linux/arm64 -t  luffyjet2023/ubuntu-focal-arm64:v1 . --load

````

## export

````
   sudo docker cp f367a6b0316f:/ ubuntu20-arm64-sysroot

````