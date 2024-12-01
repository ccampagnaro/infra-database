resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  description = "RDS Subnet Group"
  subnet_ids  = var.subnet_ids

  tags = {
    Name = "rds-subnet-group"
  }
}
