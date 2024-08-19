resource"aws_instance""public_instance"{
    
    ami="ami-0a31f06d64a91614b"
    instance_type="t2.micro"
    
    tags={
        Name="public_instance" 
    }
    subnet_id=aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.Public_Sg.id]
    associate_public_ip_address = true
    key_name="Jeel"
    
    }
resource"aws_key_pair""public_key"{
    key_name="Jeel"
    public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDE8AXXUnYVp4wO7oPO8eTnu1/BqNRkRkxqg1hppoZLhsaS5Jb0goTIr0SpJSpZRx7UzQcfq7upKofH09jFSCf2J5UzxYxirsh20U5XVp7BXbpFH1ruY6O/6XnJX0xRNMvH9kB9w9YHlnsHlJLygpmQvo5oiXaPLR355UiVBEMZXG385KRJhy4+NlwnshjVn+9O4OJG/c6WYrqFYBFbU+JgBYM8DDA4F2JNz3AEj60AXyJJjZuqNsU6VfkkMff0SgJt8EonUpFpUxMe24TEHK3D1Hu7TMt0L1mDoTpnixn7do7yG5g3HU8H0NTYDsfUOJ4+OkxHmnsftJCZv66bmyW5O0VnDDDQBhKWxuZxSxry38KvJAogfmgNe3hlZznsPuW6QJn01mFN575D81clFy8Vq7qQ94PHFrYzRdfRBU7w32hQmTR10e5kLkcW3m3dr029/qCyP+1M2zsCVCaXWJTbBq0PZKUIE7JQaRK7xzfj9EokzeNe2/a6X+H1wHKgSw8= WORLD COMPUTERS@Darren"
}
# do well to create your own keys using ssh-keygen and attach the public to your instance as seen in the configuration above