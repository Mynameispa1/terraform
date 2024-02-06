output "public_ip" {

    value = aws_instance.myec2.public_ip
}

output "privite_ip" {
    value = aws_instance.myec2.private_ip
}

output "id" {
    value = aws_instance.myec2.id
}