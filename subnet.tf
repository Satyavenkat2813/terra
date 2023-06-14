# Public-subnet-1
resource "aws_subnet" "MyPubSn-1" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.255.128/25"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "my-pub-sn-1"
  }
}

#Public-subnet-2
resource "aws_subnet" "MyPubSn-2" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.255.0/25"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "my-pub-sn-2"
  }
}

#application-subnet-1
resource "aws_subnet" "MyAppSn-1" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.254.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1a"
  tags = {
    Name = "my-app-sn-1"
  }
}

#application-subnet-2
resource "aws_subnet" "MyAppSn-2" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = "10.0.252.0/23"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1b"
  tags = {
    Name = "my-app-sn-2"
  }
}

#database-private-subnet-1
resource "aws_subnet" "MyDbPvtSn-1" {
  vpc_id            = aws_vpc.mainvpc.id
  cidr_block        = "10.0.248.0/22"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "my-db-sn-1"
  }
}

#database-private-subnet-2
resource "aws_subnet" "MyDbPvtSn-2" {
  vpc_id            = aws_vpc.mainvpc.id
  cidr_block        = "10.0.240.0/21"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "my-db-sn-1"
  }
}



