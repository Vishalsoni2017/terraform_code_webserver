resource "aws_eip" "public_IP" {
    instance = aws_instance.web.id
    domain = "vpc"
}