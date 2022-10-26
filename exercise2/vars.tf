
variable "REGION" {
  description = " put the region name"
    default     = "us-east-1"
}

variable "ZONE1" {
  type = map(any)
  description = "for multi zone deployment"
    default = {
    us-east-1 = "us-east-1a"
    us-east-2 = "us-east-2a"
    }
  }


variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-026b57f3c383c2eec"
    us-east-2 = "ami-0f924dc71d44d23e2"
  }
}
