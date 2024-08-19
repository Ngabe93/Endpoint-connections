output"instance_ip"{
    value=aws_instance.public_instance.public_ip
}
output"instance_ip2"{
    value=aws_instance.private_instance.private_ip
}
output "dns_name" {
value =aws_vpc_endpoint.Interface.dns_entry
}
