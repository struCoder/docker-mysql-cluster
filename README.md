# Docker-mysql-cluster
use docker and kingshard build mysql cluster

### How to use
* sh start.sh


### print

```
sh start.sh

Creating dockermysqlcluster_mysql1_1 ...
Creating dockermysqlcluster_mysql1_1 ... done
wait-for-it.sh: waiting 15 seconds for 172.17.0.13:3306
wait-for-it.sh: 172.17.0.13:3306 is available after 10 seconds
mysql1 is start success
Creating dockermysqlcluster_mysql2_1 ...
Creating dockermysqlcluster_mysql2_1 ... done
wait-for-it.sh: waiting 15 seconds for 172.17.0.14:3306
wait-for-it.sh: 172.17.0.14:3306 is available after 11 seconds
mysql2 is start success
start kingshard
dockermysqlcluster_mysql1_1 is up-to-date
dockermysqlcluster_mysql2_1 is up-to-date
Creating dockermysqlcluster_kingshard_1 ...
Creating dockermysqlcluster_kingshard_1 ... done


docker-compose ps

             Name                          Command             State           Ports
             ---------------------------------------------------------------------------------------------
             dockermysqlcluster_kingshard_1   /kingshard                    Up      0.0.0.0:9696->9696/tcp
             dockermysqlcluster_mysql1_1      docker-entrypoint.sh mysqld   Up      3306/tcp
             dockermysqlcluster_mysql2_1      docker-entrypoint.sh mysqld   Up      3306/tcp
```
