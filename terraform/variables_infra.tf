variable "region" {
  description = "region de AWS del proyecto"
  type = string
  #default = "us-east-1"
}

variable "base_cidr_block" {
  description = "CIDR del VPC"
  type = string
  #default = "10.12.0.0/16"
}

variable "subnet1_cidr_block" {
  description = "CIDR para la subnet publica A"
  type = string
  #default = "10.12.12.0/24"
}

variable "subnet1_avail_zone" {
  description = "Avail Zone para la subnet publica A"
  type = string
  #default = "us-east-1a"
}

variable "subnet2_cidr_block" {
  description = "CIDR para la subnet privada A"
  type = string
  #default = "10.12.40.0/24"
}

variable "subnet2_avail_zone" {
  description = "Avail Zona para la subnet privada A"
  type = string
  #default = "us-east-1b"
}

variable "omlapp_ec2_size" {
  description = "instancia para OMLApp"
  type = string
  #default = "t3.micro"
}

variable "omlapp_ec2_zone" {
  description = "avail zone para OMLApp"
  type = string
  #default = "us-east-1b"
}



variable "NIC" {
  description = "NIC param for deploy.sh"
  type = string
}

variable "omnileads_release" {
  description = "OMniLeads release to deploy"
  type = string
}

variable "TZ" {
  description = "Time Zone"
  type = string
}

variable "sca" {
  description = "OMLApp Session Cockie Age"
  type = string
}

variable "ami_user" {
  description = "Asterisk AMI user-app"
  type = string
}

variable "ami_password" {
  description = "Asterisk AMI user-pass"
  type = string
}

variable "dialer_host" {
  type = string
}

variable "dialer_user" {
  type = string
}

variable "dialer_password" {
  type = string
}

variable "mysql_host" {
  type = string
}

variable "rtpengine_host" {
  type = string
}

#variable "pg_database" {
#  type = string
#}

#variable "pg_username" {
#  type = string
#}

#variable "pg_password" {
#  type = string
#}

#variable "pg_host" {
#  type = string
#}

#variable "pg_default_password" {
#  type = string
#}

#variable "pg_port" {
#  type = string
#}

#variable "pg_default_database" {
#  type = string
#}

#variable "pg_default_user" {
#  type = string
#}
