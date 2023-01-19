resource "aws_launch_template" "new_test_template" {
    name                =           "new_test_template"
    image_id            =           "data.aws_ami.new_ami"
    instance_type       =           "t2.micro"
    user_data           =           "${file("test.sh")}"    
    key_name            =            var.key-name
    vpc_security_group_ids =        ["data.aws_security_group.security_id"]
}

resource "aws_autoscaling_group" "new_auto_scaling_group" {
    name                =           "new_auto_scaling_group"
    max_size            =            10
    min_size            =            1
    desired_capacity    =            5
    launch_template {
      id                =            aws_launch_template.new_test_template.id
      version           =            "$Latest" 
    }
  
}