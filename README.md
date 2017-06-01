# zx-db

```
// pro
docker run -d -v /"$PWD"/configdb:/data/configdb --name zx-db mongo:latest

chmod +x create_db.sh
chmod +x ./configdb/new_db.sh
./create_db.sh
/data/configdb/new_db.sh
exit

// ssh 链接 服务器
ssh root@120.76.232.12
docker exec -it mongo /bin/bash

// 服务器备份数据库
mongodump -d auth -o /db/170530
mongodump -d hz -o /db/170530
mongodump -d gz -o /db/170530
mongodump -d sz -o /db/170530

// 服务器压缩
cd db
tar -zcvf 170530.tar.gz 170530

// 从服务器拷贝数据库
scp root@120.76.232.12:/root/mongo/db/170530.tar.gz ./configdb/db
```
