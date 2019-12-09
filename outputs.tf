output "pubip" {
    value = aws_instance.dev.*.public_ip
}