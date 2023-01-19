data "aws_ami" "new_ami" {
    most_recent = true
    owners = ["973714476881"]
    # state = "available"



    filter {
      name = "name"
      values = ["Centos-*-DevOps-Practice"]
    }

    filter {
      name = "architecture"
      values = ["x86_64"]
    }

    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

    # filter {
    #   name = "root_device_name"
    #   values = ["/dev/sda1"]
    # }

    # filter {
    #     name = "root_device_type"
    #     values = ["ebs"]
    # }

    # filter {
    #   name = "image_type"
    #   values = ["machine"]
    # }

    # filter {
    #   name =  "platform_details"
    #   values = ["Linux/UNIX"] 
    # }
  
}