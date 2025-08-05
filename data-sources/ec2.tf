resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-042ad1e82e90ec91b" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}