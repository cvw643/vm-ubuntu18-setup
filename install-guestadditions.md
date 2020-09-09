1. 将iso文件挂载到自己的系统中,lsblk 查看下设备号.

```
mkdir /mnt/cdrom
sudo mount /dev/sr0  /mnt/cdrom
```

2. 进入挂载目录运行安装脚本

```
cd /mnt/cdrom
sudo ./VBoxLinuxAdditions.run
```

3. 不过这时候可能会遇到一些问题,please install the gcc make perl packages from your distribution.这就是我当时遇到的一个错误提示,apt-cache 也没找到对应的包,最后发现是要安装与系统对应的开发工具,命令如下:

```
apt-get install build-essential linux-headers-$(uname -r)
```

## References
https://www.jianshu.com/p/60ca6c96c4bf
