output "public_ip" {
  value = aws_instance.Giovani.public_ip
}

output "private_ip" {
  value = aws_instance.Giovani.private_ip
}

output "instance_id" {
    value = aws_instance.Giovani.id
}

output "tags" {
    value = aws_instance.Giovani.tags_all
}