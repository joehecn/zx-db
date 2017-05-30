# 数据库名
DB_NAME=170530
mkdir /temp
cp /data/configdb/db/$DB_NAME.tar.gz /temp
cd /temp
# 解压数据库
tar -zxvf $DB_NAME.tar.gz
# 还原数据库
mongorestore --noIndexRestore -d auth $DB_NAME/auth
mongorestore --noIndexRestore -d hz $DB_NAME/hz
mongorestore --noIndexRestore -d gz $DB_NAME/gz
mongorestore --noIndexRestore -d sz $DB_NAME/sz
# 删除临时的db目录
rm -rf /temp
