
# 配置说明（讲json的配置文件传送到datax服务上。然后运行datax，读取json配置的job，进行数据抽取）
## requirements
1. Linux
2. Docker

## 配置步骤
- 拉取镜像
</br> docker pull weekndchina/datax

- 运行镜像
</br> docker run -u root --name datax -it datax:latest /bin/bash

- 克隆工程
</br> git clone https://github.com/weekndchina/datax.git xjobs

- 运行脚本完成自动化部署
</br> sh xjobs/autodeploymen.sh

- 测试结果
</br>Sucess！成功
</br>Or
</br>Failed！失败
