variable "name" {
    type = string  
}
variable "asg_name" {
    type = string
}
variable "instance_type" {
    type = string  
}
variable "block_device_mappings" {
    type = list
}
variable "capacity_reservation_specification" {
    type = any
    default =  {}
}
variable "cpu_options" {
    type = map(string)  
}
variable "credit_specification" {
    type = map(string)
}
variable "elastic_gpu_specifications" {
    type = map(string)
}
variable "elastic_inference_accelerator" {
    type = map(string)
}
variable "enclave_options" {
    type = map(string)
}
variable "hibernation_options" {
    type = map(string)
}
variable "instance_market_options" {  
    type        = any
    default     = {}
}

variable "license_specifications" {  
    type        = map(string)
    default     = {}
}

variable "maintenance_options" {  
    type        = any
    default     = {}
}

variable "network_interfaces" {  
    type   = list(any)

}

variable "placement" {  
    type        = map(string)
    default     = {}
}
variable "launch_template_description" {
    type = string
}
variable "private_dns_name_options" {  
    type        = map(string)
    default     = {}
}
variable "ebs_optimized " {
    type = bool
    default = null    
}
variable "image_id" {
    type = string
}
variable "key_name" {
    type = string
}
variable "user_data" {
    type = string
}
variable "tag_specifications" {  
    type        = list(any)   
}
variable "tags" {
    type        = map(string)
}
variable "instance_requirements" {  
    type        = any
    default     = {}
}

variable "key_name" {  
    type        = string
    default     = null
}
variable "enable_monitoring " {
    type =   bool
    default = true
}

variable "user_data" {  
    type        = string
    default     = null
}

variable "security_groups" {
    type        = list(string)
    default     = []
}
variable "metadata_options" {
    type        = map(string)
    default     = {}
}
variable "default_version" {
    type        = string
    default     = null
}

variable "update_default_version" {
    type        = string
    default     = null
}

variable "disable_api_termination" {
    type        = bool
    default     = null
}

variable "disable_api_stop" {
    type        = bool
    default     = null
}

variable "instance_initiated_shutdown_behavior" {
    type        = string
    default     = null
}

variable "kernel_id" {
    type        = string
    default     = null
}

variable "ram_disk_id" {
    type        = string
    default     = null
}
variable "availability_zones" {
    type        = list(string)
    default     = null
}

variable "vpc_zone_identifier" {
    type        = list(string)
    default     = null
}

variable "min_size" {
    type        = number
    default     = null
}

variable "max_size" {
    type        = number
    default     = null
}

variable "desired_capacity" {
    type        = number
    default     = null
}

variable "capacity_rebalance" {
    type        = bool
    default     = null
}
variable "min_elb_capacity" {
    type        = number
    default     = null
}

variable "wait_for_elb_capacity" {
    type        = number
    default     = null
}

variable "wait_for_capacity_timeout" {
    type        = string
    default     = null
}

variable "default_cooldown" {
    type        = number
    default     = null
}

variable "default_instance_warmup" {
    type        = number
    default     = null
}

variable "protect_from_scale_in" {
    type        = bool
    default     = false
}

variable "load_balancers" {
    type        = list(string)
    default     = []
}

variable "target_group_arns" {
    type        = list(string)
    default     = []
}

variable "placement_group" {
    type        = string
    default     = null
}

variable "health_check_type" {
    type        = string
    default     = null
}
variable "health_check_grace_period" {
    type        = number
    default     = null
}

variable "force_delete" {
    type        = bool
    default     = null
}

variable "termination_policies" {
    type        = list(string)
    default     = []
}

variable "suspended_processes" {
    type        = list(string)
    default     = []
}

variable "max_instance_lifetime" {
    type        = number
    default     = null
}

variable "enabled_metrics" {
    type        = list(string)
    default     = []
}

variable "metrics_granularity" {
    type        = string
    default     = null
}

variable "service_linked_role_arn" {
    type        = string
    default     = null
}
variable "initial_lifecycle_hook" {
    type        = list(map(string))
    default     = []
}

variable "instance_refresh" {
    type        = any
    default     = {}
}
variable "mixed_instances_policy" {
    type        = any
    default     = null
}
variable "warm_pool" {
    type = any  
}
variable "delete_timeout" {
    type = string  
}