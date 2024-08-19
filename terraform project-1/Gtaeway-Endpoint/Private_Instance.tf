resource"aws_instance""private_instance"{
    
    ami="ami-0862be96e41dcbf74"
    instance_type="t2.micro"
    tags={
        Name="private_instance"
    }
     subnet_id=aws_subnet.private_subnet.id
    vpc_security_group_ids =[aws_security_group.Private_SG.id]
    key_name="Joel"
}
resource"aws_key_pair""private_key"{
    key_name="Joel"
    public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCznaUQ10OWUPUWsWvkmyesdW5GaSkqk+PDHjHJqP+20NDfrybHb4niolDpq8DZNkSgxx7SsZ1MuorB51lCpYfE4IfAb3IzUyEHQ5USr7+WP8oGllRvdL18rHg5hyfSp1qqU5kp1kdZ94Ua8z9ahiBrfW/ea2xEkYLxiHedMmDbDXF7KiUXcnXuXT2SNKs2UQPbq6saLGxp3NrKY1purvcuJS7C0FjHTOkVImlQdhQxMNKDKYse999DNiNCfyUdFXY5i1ZoyvvM5ySmIM2ZmGvtAu1H9qB+JK66oK8tT1b5gOQ6aKazCiZ9DiIr34X2haHBcocVh2qDyg/AnTunzNiOPDmTjGePo2A/Ddzbx76/xFRuncMHsGZ47uQx2SgJda5v+8I2SLQJCXb4oCcBWl2/WftJzggdczyX1JupbYcnqwMJnIgMTsZRWBNm8c3Qflxkk4xVEr7I4bR8sdGsypR691r1ckap+5qGLBA6E8/nY9ArMB3/+9X+U+SH0uWOxEk= WORLD COMPUTERS@Darren"
}
# do well to create your own keys using ssh-keygen and attach the public to your instance as seen in the configuration above.