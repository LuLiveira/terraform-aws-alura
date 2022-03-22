variable "amis" {
  type = "map"

  default = {
      "us-east-1" = "ami-0e472ba40eb589f49"
      "us-east-2" = "ami-0773fc21d80336e3e"
  }
}

variable "cdirs_acesso_remoto" {
  type = "list"

  default = ["187.21.138.21/32"]
}