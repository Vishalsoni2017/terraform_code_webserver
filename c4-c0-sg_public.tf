
resource "aws_security_group" "vpc_ssh" {
    name = "vpc_ssh"
    description = "allow ssh"
    vpc_id = aws_vpc.myvpc.id
    ingress {
        from_port = "22"
        to_port = "22"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


resource "aws_security_group" "vpc_http" {
    name = "vpc_http"
    description = "allow vpc_http"
    vpc_id = aws_vpc.myvpc.id
    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}