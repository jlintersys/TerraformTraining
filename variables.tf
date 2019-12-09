
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}
variable "AWS_AMI" {
    type = map
    default = {
        us-east-1 = "ami-00068cd7555f543d5"
        us-east-2 = "ami-922914f7"
    }
}

variable "env" {}

variable "instance_type" {
    type = map
    default = {
        dev = "t2.micro"
        test = "t2.medium"
    }
}
