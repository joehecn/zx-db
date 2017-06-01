# 删除容器
docker rm -f mongo
# 创建并运行容器
docker run -d -v /"$PWD"/configdb:/data/configdb -p 27017:27017 --name zx-db mongo:latest
# 进入容器内部
docker exec -it zx-db /bin/bash
