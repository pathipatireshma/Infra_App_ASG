variable "name" {
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