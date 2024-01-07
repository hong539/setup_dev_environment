# database

## guides/tips/misc...etcs

* [docker compose/PostgreSQL samples](https://docs.docker.com/samples/postgres/)
* [donnemartin/system-design-primer#database](https://github.com/donnemartin/system-design-primer#database)
* [youtube:AWS re:Invent 2019: [REPEAT] Scaling up to your first 10 million users (ARC211-R)](https://youtu.be/kKjm4ehYiMs)
* [enterprisedb/docs](https://www.enterprisedb.com/docs/)
    * [This section describes how to test a PostgreSQL cluster on your laptop/computer using CloudNativePG on a local Kubernetes cluster in Kind or Minikube.](https://github.com/EnterpriseDB/cloudnative-pg/blob/main/docs/src/quickstart.md)
    * [美國電信巨頭將 100TB 資料從 Oracle 遷移至開源的 EDB Postgres](https://www.omniwaresoft.com.tw/usecase/edb-usecase/edb-postgresql-wirelesscarrier/)
        * 分割資料表 (partitioning)
        * 異質資料庫連結（heterogeneous database links)
* PostgreSQL    
    * [正規化探討](https://hackmd.io/@pgsql-tw/BJZrBWU86)
    * [PostgreSQL 巧用 array 處理 tags](https://hackmd.io/@pgsql-tw/rJSOHh8zT)
    * version 15
        * [PostgreSQL 15 手冊翻譯](https://docs.postgresql.tw/v/15/)
            * [26. 備份及還原](https://docs.postgresql.tw/v/15/server-administration/backup-and-restore)
        * [PostgreSQL 15 Tutorial](https://www.postgresql.org/docs/15/tutorial.html)
            * [9.7. Pattern Matching](https://www.postgresql.org/docs/15/functions-matching.html)
        * ForeignKey
            * [3.3. 外部索引鍵](https://docs.postgresql.tw/v/15/tutorial/advanced-features/foreign-keys)            
    * [Design Tools](https://wiki.postgresql.org/wiki/Design_Tools)
    * [FAQ/zh-hant](https://wiki.postgresql.org/wiki/FAQ/zh-hant)
    * [攻克金融數據之巔：優化 SQL 效能 - PostgreSQL 資料庫技巧揭密](https://coscup.org/2023/zh-TW/session/3MBNCY)
* [PostgreSQL](https://www.postgresql.org/)
    * [PostgreSQL 15 手冊翻譯](https://docs.postgresql.tw/v/15/)
    * [Design Tools](https://wiki.postgresql.org/wiki/Design_Tools)
    * [FAQ/zh-hant](https://wiki.postgresql.org/wiki/FAQ/zh-hant)
    * [PostgreSQL 15 Tutorial](https://www.postgresql.org/docs/15/tutorial.html)
        * [9.7. Pattern Matching](https://www.postgresql.org/docs/15/functions-matching.html)
* [w3schools/sql](https://www.w3schools.com/sql/)
* [Triton Ho/slides](https://github.com/TritonHo/slides/tree/master)
* MySQL
    * [MySQL](https://www.mysql.com/)
    * [5.7](https://dev.mysql.com/doc/refman/5.7/en/default-privileges.html)
    * [How to find the latest binlog file name and position in slave mysql?](https://stackoverflow.com/questions/76990896/how-to-find-the-latest-binlog-file-name-and-position-in-slave-mysql)
    * [4.5.8 mysqlslap — A Load Emulation Client](https://dev.mysql.com/doc/refman/5.7/en/mysqlslap.html)
* [MariaDB](https://mariadb.com/)
    * [connectors](https://mariadb.com/kb/en/connectors/)
* SQL/mysqlslap
```sql
show proccesslist;

# 单线程测试。测试做了什么。
mysqlslap -a -uroot -p123456
 
# 多线程测试。使用–concurrency来模拟并发连接。
mysqlslap -a -c 100 -uroot -p123456
 
# 迭代测试。用于需要多次执行测试得到平均值。
mysqlslap -a -i 10 -uroot -p123456
 
mysqlslap ---auto-generate-sql-add-autoincrement -a -uroot -p123456
mysqlslap -a --auto-generate-sql-load-type=read -uroot -p123456
mysqlslap -a --auto-generate-secondary-indexes=3 -uroot -p123456
mysqlslap -a --auto-generate-sql-write-number=1000 -uroot -p123456
mysqlslap --create-schema world -q "select count(*) from City" -uroot -p123456
mysqlslap -a -e innodb -uroot -p123456
mysqlslap -a --number-of-queries=10 -uroot -p123456
 
# 测试同时不同的存储引擎的性能进行对比：
mysqlslap -a --concurrency=50,100 --number-of-queries 1000 --iterations=5 --engine=myisam,innodb --debug-info -uroot -p123456
 
# 执行一次测试，分别50和100个并发，执行1000次总查询：
mysqlslap -a --concurrency=50,100 --number-of-queries 1000 --debug-info -uroot -p123456
 
# 50和100个并发分别得到一次测试结果(Benchmark)，并发数越多，执行完所有查询的时间越长。为了准确起见，可以多迭代测试几次:
mysqlslap -a --concurrency=50,100 --number-of-queries 1000 --iterations=5 --debug-info -uroot -p123456
```

* replication
    * [5.7/4.5.4 mysqldump — A Database Backup Program](https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html)
* [w3schools/sql](https://www.w3schools.com/sql/)
* [Triton Ho/slides](https://github.com/TritonHo/slides/tree/master)
* [TiDB](https://www.pingcap.com/)
* Spider
* [Spider Storage Engine Overview](https://mariadb.com/kb/en/spider-storage-engine-overview/)
* [Introduction to noSQL](https://tritonho.kktix.cc/events/2023-q4)
* [Introduction to Data Analysis WITHOUT RDBMS](https://tritonho.kktix.cc/events/2024-q1)
* greenplum
* Timescale
* PostGIS
* AWS RDS Aurora
    * [Replication between Aurora and MySQL or between Aurora and another Aurora DB cluster (binary log replication)](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Replication.MySQL.html#AuroraMySQL.Replication.MySQL.EnableReplication)
    * [Announcing Amazon Relational Database Service (RDS) Snapshot Export to S3](https://aws.amazon.com/about-aws/whats-new/2020/01/announcing-amazon-relational-database-service-snapshot-export-to-s3/)
    * [Restoring Parquet snapshot to a local version of mysql](https://community.zenduty.com/t/restoring-parquet-snapshot-to-a-local-version-of-mysql/536)
    * [Restoring offline RDS backup](https://repost.aws/questions/QURz9CEECqQtef24xykUo_IQ/restoring-offline-rds-backup)
    * load balancer before rds aurora?
    * [Hyperscaling Aurora MySQL-Compatible to handle sudden traffic growth](https://docs.aws.amazon.com/prescriptive-guidance/latest/hyperscale-aurora-mysql/manage-connections.html)
    * [mysql.rds_set_external_master_with_auto_position (Aurora MySQL version 2)](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/mysql-stored-proc-replicating.html#mysql_rds_set_external_master_with_auto_position)    
* Object Relational Mapping (ORM)
    * [wikipedia/Comparison of object–relational mapping software](https://en.wikipedia.org/wiki/Comparison_of_object%E2%80%93relational_mapping_software)
* [wikipedia/Java Database Connectivity (JDBC)](https://en.wikipedia.org/wiki/Java_Database_Connectivity)

## NoSQL databases

* MongoDB
    * [MongoDB Atlas Database](https://www.mongodb.com/atlas/database)
    * [Docker and MongoDB](https://www.mongodb.com/compatibility/docker)
    * [MongoDB 6.0.5 Compatibility Issue with Ryzen 5 5500U on Ubuntu](https://www.mongodb.com/community/forums/t/mongodb-6-0-5-compatibility-issue-with-ryzen-5-5500u-on-ubuntu/218282/4)
    * [Mongo DB 5.0 not install](https://forum.proxmox.com/threads/mongo-db-5-0-not-install.95857/#post-440005)
    * [promox/How do I enable AVX on my server?](https://www.reddit.com/r/homelab/comments/yvo4jm/how_do_i_enable_avx_on_my_server/)
* Elasticsearch