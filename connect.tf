variable "region" {}
 variable "Itype" {}

provider "aws"{
    
    region = "${var.region}"
}

resource "aws_instance" "firsttry"{
    ami = "ami-b374d5a5"
    instance_type = "${var.Itype}"
}
output "instanceIp" {
  value = "${aws_instance.firsttry.id}"
}
