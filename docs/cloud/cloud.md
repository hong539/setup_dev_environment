# cloud

## Guides/Tips/Misc...etc

* AWS
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
    * [Announcing Amazon Relational Database Service (RDS) Snapshot Export to S3](https://aws.amazon.com/about-aws/whats-new/2020/01/announcing-amazon-relational-database-service-snapshot-export-to-s3/)
    * [Restoring Parquet snapshot to a local version of mysql](https://community.zenduty.com/t/restoring-parquet-snapshot-to-a-local-version-of-mysql/536)
    * [Restoring offline RDS backup](https://repost.aws/questions/QURz9CEECqQtef24xykUo_IQ/restoring-offline-rds-backup)
    * load balancer before rds aurora
    * [Hyperscaling Aurora MySQL-Compatible to handle sudden traffic growth](https://docs.aws.amazon.com/prescriptive-guidance/latest/hyperscale-aurora-mysql/manage-connections.html)

* Amazon RDS

```SQL
SELECT pid, datname, query, extract(epoch from now()) - extract(epoch from xact_start) AS duration, 
CASE WHEN wait_event IS NULL THEN 'CPU' ELSE wait_event_type || ':' || wait_event END wait 
FROM pg_stat_activity 
WHERE query != current_query() AND xact_start IS NOT NULL 
ORDER BY 4 DESC;
```