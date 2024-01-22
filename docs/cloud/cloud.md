# cloud

## Guides/Tips/Misc...etc

* GCP
    * [Migrating from Amazon Aurora MySQL without SUPERUSER privileges](https://cloud.google.com/database-migration/docs/mysql/aurora-no-superuser)
* AWS
    * [Run Amazon Linux 2 as a virtual machine on premises](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/amazon-linux-2-virtual-machine.html)
    * [災難復原 (DR) 目標](https://docs.aws.amazon.com/zh_tw/wellarchitected/latest/reliability-pillar/disaster-recovery-dr-objectives.html)
    * [AWS Pricing Calculator](https://docs.aws.amazon.com/pricing-calculator/latest/userguide/what-is-pricing-calculator.html)
    * [What is AWS Database Migration Service?](https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html)
    * [What is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
    * [High availability for Amazon Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html)
    * [s3/pricing](https://aws.amazon.com/s3/pricing/)
    * [s3/storage-classes](https://aws.amazon.com/s3/storage-classes/)
    * [Transferring large quantities of data from S3 bucket with direct connect](https://stackoverflow.com/questions/65939747/transferring-large-quantities-of-data-from-s3-bucket-with-direct-connect)
    * [Amazon Aurora Pricing](https://aws.amazon.com/rds/aurora/pricing/)
        * Snapshot or cluster export costs
        * Example using snapshot or cluster export
    * [Exporting DB cluster data to Amazon S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/export-cluster-data.html)
    * [How do I view the total storage used for my Amazon Aurora MySQL DB cluster?](https://repost.aws/knowledge-center/view-storage-aurora-cluster)
    * [No way to restore a backup that was exported from RDS to S3?](https://www.reddit.com/r/aws/comments/ivt9p6/no_way_to_restore_a_backup_that_was_exported_from/)
    
* Amazon RDS
    * User Guide for Aurora
        * [Replication between Aurora and MySQL or between Aurora and another Aurora DB cluster (binary log replication)](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Replication.MySQL.html)

* SQL scripts

```SQL
SELECT pid, datname, query, extract(epoch from now()) - extract(epoch from xact_start) AS duration, 
CASE WHEN wait_event IS NULL THEN 'CPU' ELSE wait_event_type || ':' || wait_event END wait 
FROM pg_stat_activity 
WHERE query != current_query() AND xact_start IS NOT NULL 
ORDER BY 4 DESC;
```