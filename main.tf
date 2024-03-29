resource "aws_db_instance" "default" {
  allocated_storage    = "30"
  engine               = "oracle-se2"
  engine_version       = "19.0.0.0.ru-2021-10.rur-2021-10.r1"
  instance_class       = "db.r5.xlarge"
  name                 = "oracle"
  username             = var.secrets.USERNAME
  random_password      = var.secrets.RANDOM_PASSWORD
  parameter_group_name = "default.oraclel5.7"
  skip_final_snapshot  = true
}
