provider "aws" {

    access_key ="AKIAVRUVUI7XQ"
    secret_key =""
    region     ="ap-south-1"
}
resource "aws_instance" "awsec2instance" {
    ami ="id"
    tags = {
        Name = "newinstance"
    }
    instance_type  ="t2.micro"
    key_name       ="key pair name"
    security_groups= ["${aws_security_groups.rhel.name}"]
}
resource "aws_security_group" "rhel" {
    name        ="rhel"
    description ="rhel traffic"
    ingress {
        from_port =22
        to_port   =22
        protocol  ="tcp"
        cidr_blocks=["0.0.0.0/0"]
    }
}        
