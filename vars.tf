variable "amis" {
  type = "map"

  default = {
      "us-east-1" = "ami-0e472ba40eb589f49"
      "us-east-2" = "ami-0773fc21d80336e3e"
  }
}