

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr_block
    tags = local.common-tags
}

resource "aws_subnet" "public_subnet" {
    vpc_id = "${aws_vpc.myvpc.id}"
    cidr_block = "10.1.1.0/24"
    availability_zone = var.vpc_az
    tags = local.common-tags
}

resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.myvpc.id}"
    tags = local.common-tags
}

resource "aws_route_table" "public_route" {
    vpc_id = "${aws_vpc.myvpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }
    tags = local.common-tags
}

resource "aws_route_table_association" "publicA" {
    route_table_id = "${aws_route_table.public_route.id}"
    subnet_id = "${aws_subnet.public_subnet.id}"
}
