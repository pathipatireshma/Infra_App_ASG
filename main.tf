resource "aws_launch_template" "new_test_template" {
    name                =           "new_test_template"
    image_id            =            data.aws_ami.new_ami.id
    instance_type       =           "t2.micro"
    user_data           =            filebase64("test.sh")  
    key_name            =            var.key-name
    # vpc_security_group_ids =        ["sg-02784dbc7f03b1ef1"]
    network_interfaces{
    #  security_groups     =            ["data.aws_security_group.security_id.id "]
     subnet_id           =            data.aws_subnet.subnet_name.id
     security_groups     =            ["sg-02784dbc7f03b1ef1"]
    }
}

resource "aws_autoscaling_group" "new_auto_scaling_group" {
    name                =           "new_auto_scaling_group"
    max_size            =            3
    min_size            =            1
    desired_capacity    =            1
    # vpc_zone_identifier =            ["subnet-07ec79d828981a1f8"]
    health_check_grace_period = 300
    launch_template {
    id      = aws_launch_template.new_test_template.id
    version = "$Latest"
  }
    # launch_template {
    #   id                =            "lt-0bd2e8c332359ee00"
    #   version           =            "$Latest" 
    # }
  
}