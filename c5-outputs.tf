

output "AMI-ID" {
  value       = data.aws_ami.ami2linux.id
}

output "vpc_id" {
    value = aws_vpc.myvpc.id
}

output "Public_IP" {
    value = aws_eip.public_IP.public_ip
}