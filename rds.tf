# Create RDS instnce 


resource "aws_db_subnet_group" "rds1" {
name = "main"
subnet_ids = [aws_subnet.MyDbPvtSn-1.id , aws_subnet.MyDbPvtSn-2.id]
tags = {
Name = " DB subnet group"
}
}

resource "aws_db_instance" "db-instance"{
allocated_storage = 10
db_subnet_group_name = aws_db_subnet_group.rds1.id
engine  = "mysql"
engine_version = "5.7"
instance_class = "db.t2.micro"
multi_az = true
username = "username"
password =  "password"
skip_final_snapshot = true
vpc_security_group_ids = [aws_security_group.db_sg.id]
tags = {
Name = "mydb"
}
}
