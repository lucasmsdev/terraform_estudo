resource "aws_rds_cluster" "default" {
    cluster_identifier = "aurora-cluster-demo",
    engine = "aurora-mysql",
    engine_version = "5.7.mysql_aurora.2.03.2",
    availability_zones = "us-east-1",
    database_name = "database-teste",
    master_username = "admin",
    master_password = "admin123",
    backup_retention_period = 5,
    preferred_backup_window = "07:00-09-00"
}