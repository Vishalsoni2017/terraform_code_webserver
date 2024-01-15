
resource "aws_instance" "web" {
    ami = data.aws_ami.ami2linux.id
    instance_type = var.ec2_instance_type
    key_name = var.ec2_keyName
    subnet_id = aws_subnet.public_subnet.id
    user_data = file("${path.module}/script.sh")
    vpc_security_group_ids = [aws_security_group.vpc_ssh.id , aws_security_group.vpc_http.id]
    tags = {
        Name = "${local.env} - Webserver"
    }
}