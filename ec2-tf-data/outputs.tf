output "my-vm-public-ip" {

  value = aws_instance.example.public_ip


}

resource "local_file" "terry_ip" {
  content  = " My public IP is ${aws_instance.example.public_ip}"
  filename = "${path.module}/terry_ip.txt"
}
