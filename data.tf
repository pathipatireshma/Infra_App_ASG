data "aws_ami" "new_ami" {
    most_recent = true
    owners = ["630037968134"]
    # state = "available"



    filter {
      name = "name"
      values = ["Test_AMI"]
    }

    filter {
      name = "architecture"
      values = ["x86_64"]
    }

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}

data "aws_security_group" "security_id" {
    filter {
      name = "vpc-id"
      values = [var.my_vpc]
    }
    filter {
      name = "group-name"
      values = ["my_sg_test"]
    }
  
}

data "aws_subnet" "subnet_name" {
    filter {
      name = "vpc-id"
      values = [var.my_vpc]
    }
    filter {
      name = "subnet-id"
      values = ["subnet-07ec79d828981a1f8"]
    }
}