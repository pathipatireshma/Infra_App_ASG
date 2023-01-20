resource "aws_launch_template" "new_test_template" {
    name                =           "new_test_template"
    image_id            =           "ami-04224516bca003f53"
    instance_type       =           "t2.micro"
    # user_data           =            file("test.sh")  
    key_name            =            var.key-name
    vpc_security_group_ids =        ["sg-02784dbc7f03b1ef1"]
    # subnet_id           =           [data.aws_subnet.subnet_name.id]
}

resource "aws_autoscaling_group" "new_auto_scaling_group" {
    name                =           "new_auto_scaling_group"
    max_size            =            10
    min_size            =            1
    desired_capacity    =            5
    vpc_zone_identifier =            ["subnet-07ec79d828981a1f8"]
    health_check_grace_period = 300
    launch_template {
      id                =            aws_launch_template.new_test_template.id
      version           =            "$Latest" 
    }
  
}