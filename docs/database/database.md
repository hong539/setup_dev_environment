# database

## guides/tips/misc...etcs

* [wikipedia/List_of_relational_database_management_systems](https://en.wikipedia.org/wiki/List_of_relational_database_management_systems)
* [build-and-automate-your-python-etl-pipeline-with-airflow](https://morioh.com/a/7c5f74462887/build-and-automate-your-python-etl-pipeline-with-airflow)
    * [automate_etl_with_airflow.py](https://github.com/hnawaz007/pythondataanalysis/blob/main/ETL%20Pipeline/automate_etl_with_airflow.py)
* Entity–attribute–value model EAV
* [Best way to extend information on a relational database](https://stackoverflow.com/questions/42259052/best-way-to-extend-information-on-a-relational-database)
* [wikipedia/Partition (database)](https://en.wikipedia.org/wiki/Partition_(database))
* [wikipedia/Shard (database architecture)](https://en.wikipedia.org/wiki/Shard_(database_architecture))
* ProxySQL
    * [使用 ProxySQL 來簡化 MySQL 的讀寫分離](https://blog.yowko.com/proxysql/)
    * [ProxySQL](https://proxysql.com/)
* EDB
    * [Backup](https://github.com/EnterpriseDB/cloudnative-pg/blob/main/docs/src/backup.md)
* [Taiwan PostgreSQL User Group](https://github.com/pgsql-tw)
* [關於Trigger的使用與設計](https://drive.google.com/drive/folders/1FN_Zo08mOCjtob9_K-cZ9Ij38gFwl93j)
* [資料庫的四大問題分類](https://medium.com/pgsql-tw/%E8%B3%87%E6%96%99%E5%BA%AB%E7%9A%84%E5%9B%9B%E5%A4%A7%E5%95%8F%E9%A1%8C%E5%88%86%E9%A1%9E-88b020819be4)
* [資料治理，從打造隨選資料流開始](https://medium.com/pgsql-tw/%E8%B3%87%E6%96%99%E6%B2%BB%E7%90%86-%E5%BE%9E%E6%89%93%E9%80%A0%E9%9A%A8%E9%81%B8%E8%B3%87%E6%96%99%E6%B5%81%E9%96%8B%E5%A7%8B-c24a2d5fb98d)
* [備援，不是備位充數](https://medium.com/pgsql-tw/%E5%82%99%E6%8F%B4-%E4%B8%8D%E6%98%AF%E5%82%99%E4%BD%8D%E5%85%85%E6%95%B8-fb026442c828)
* [docker compose/PostgreSQL samples](https://docs.docker.com/samples/postgres/)
* [donnemartin/system-design-primer#database](https://github.com/donnemartin/system-design-primer#database)
* [youtube:AWS re:Invent 2019: [REPEAT] Scaling up to your first 10 million users (ARC211-R)](https://youtu.be/kKjm4ehYiMs)
* [enterprisedb/docs](https://www.enterprisedb.com/docs/)
    * [This section describes how to test a PostgreSQL cluster on your laptop/computer using CloudNativePG on a local Kubernetes cluster in Kind or Minikube.](https://github.com/EnterpriseDB/cloudnative-pg/blob/main/docs/src/quickstart.md)
    * [美國電信巨頭將 100TB 資料從 Oracle 遷移至開源的 EDB Postgres](https://www.omniwaresoft.com.tw/usecase/edb-usecase/edb-postgresql-wirelesscarrier/)
        * 分割資料表 (partitioning)
        * 異質資料庫連結（heterogeneous database links)
* PostgreSQL
    * [16/24.3. 字元集支援](https://docs.postgresql.tw/server-administration/localization/character-set-support)
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
* MySQL/MariaDB
    * [MySQL User Group Taiwan](https://www.facebook.com/groups/taiwanmysqlusergroup/)
    * [MySQL Query Performance Optimize](https://mybaseball52.medium.com/mysql-query-performance-optimization-tips-7a4f7f781ee5)
    * [MySQL Query Optimizer 研究](https://mybaseball52.medium.com/researching-on-mysql-query-optimizer-a6316bcf8c66)
    * [MySQL](https://www.mysql.com/)
    * [5.7](https://dev.mysql.com/doc/refman/5.7/en/default-privileges.html)
    * [How to find the latest binlog file name and position in slave mysql?](https://stackoverflow.com/questions/76990896/how-to-find-the-latest-binlog-file-name-and-position-in-slave-mysql)
    * [4.5.8 mysqlslap — A Load Emulation Client](https://dev.mysql.com/doc/refman/5.7/en/mysqlslap.html)
    * [Why use GTIDs in MySQL replication?](https://stackoverflow.com/questions/23485871/why-use-gtids-in-mysql-replication)
    * [MySQL Backup and Recovery](https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/)
    * [1.5.1 Point-in-Time Recovery Using Binary Log](https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/point-in-time-recovery-binlog.html)
    * [1.5.2 Point-in-Time Recovery Using Event Positions](https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/point-in-time-recovery-positions.html)
    * [Limiting the number of records from mysqldump?](https://stackoverflow.com/questions/135835/limiting-the-number-of-records-from-mysqldump)
    * [MariaDB](https://mariadb.com/)
    * [stackoverflow/amazon-aurora and mariadb](https://stackoverflow.com/questions/tagged/amazon-aurora%2bmariadb?tab=newest&page=1&pagesize=15)
    * [MariaDB versus MySQL: Compatibility](https://mariadb.com/kb/en/mariadb-vs-mysql-compatibility/)
    * [MariaDB vs. MySQL](https://mariadb.com/database-topics/mariadb-vs-mysql/)
    * [MySQL 5.7 EOL: Move to MariaDB Server with 11 Easy Commands](https://mariadb.com/resources/blog/mysql-5-7-eol-move-to-mariadb-server-with-11-easy-commands/)
    * [Migrate to MariaDB Server from MySQL 5.7 using a single command](https://mariadb.com/resources/blog/migrate-to-mariadb-server-from-mysql-5-7-using-a-single-command/)
    * [How can I migrate MariaDB to Aurora](https://stackoverflow.com/questions/60413246/how-can-i-migrate-mariadb-to-aurora)
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