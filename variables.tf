variable "env_name" {
    type = string
    description = "Environment name (e.g., dev, staging, prod)"
}

variable "host_port" {
    type = number
    description = "Host port to expose the Nginx container"
}

