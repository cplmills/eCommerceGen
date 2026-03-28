variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Amazon Linux 2 AMI ID for the target region. Update if you change regions."
  type        = string
  # Amazon Linux 2 (us-east-1) — update for other regions:
  # us-west-2: ami-0b20a6f09484773af
  # eu-west-1: ami-0d940f23d527c3ab1
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro" # Free-tier eligible
}

variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH access (leave empty to skip)"
  type        = string
  default     = ""
}

variable "docker_image" {
  description = "Docker Hub image to pull and run"
  type        = string
  default     = "cplmills1981/ecommercegen:latest"
}

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed to SSH into the instance. Restrict to your IP for security."
  type        = list(string)
  default     = ["0.0.0.0/0"] # Open for class demo — tighten in production
}
