
# 配置说明（讲json的配置文件传送到datax服务上。然后运行datax，读取json配置的job，进行数据抽取）
## requirements
Linux
Docker


- 拉取镜像
docker pull weekndchina/datax

- 运行镜像
docker run -u root --name datax -it datax:latest /bin/bash

- 克隆工程
git clone https://github.com/weekndchina/datax.git xjobs

- 运行脚本完成自动化部署
sh xjobs/autodeploymen.sh

- 测试结果
Sucess！成功
Or
Failed！失败
