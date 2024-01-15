
data "aws_ami" "ami2linux" {
    most_recent = true 
    owners = ["amazon"]
     filter {
        name = "name"
        values = ["amzn2-ami-kernel-*-gp2"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
    
    filter {
        name = "root-device-type"
        values = ["ebs"]
    }
}