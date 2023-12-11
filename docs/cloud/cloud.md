# cloud

## Guides/Tips/Misc...etc

* AWS
    * [What is AWS Database Migration Service?](https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html)
    * [What is Amazon Aurora?](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html)
    * [High availability for Amazon Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html)
    * [s3/pricing](https://aws.amazon.com/s3/pricing/)
    * [s3/storage-classes](https://aws.amazon.com/s3/storage-classes/)
    * [Transferring large quantities of data from S3 bucket with direct connect](https://stackoverflow.com/questions/65939747/transferring-large-quantities-of-data-from-s3-bucket-with-direct-connect)
    * [Amazon Aurora Pricing](https://aws.amazon.com/rds/aurora/pricing/)
    * [Exporting DB cluster data to Amazon S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/export-cluster-data.html)

* Amazon RDS

```SQL
SELECT pid, datname, query, extract(epoch from now()) - extract(epoch from xact_start) AS duration, 
CASE WHEN wait_event IS NULL THEN 'CPU' ELSE wait_event_type || ':' || wait_event END wait 
FROM pg_stat_activity 
WHERE query != current_query() AND xact_start IS NOT NULL 
ORDER BY 4 DESC;
```