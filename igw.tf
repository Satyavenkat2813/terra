resource "aws_internet_gateway" "MyIgw" {
vpc_id = "${aws_vpc.mainvpc.id}"
tags = {
Name = "my-igw"
}
}
