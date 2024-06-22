variable "project_name"{
    type = string

}

variable "environment"{
    type = string
}

variable "sg_name"{
    type = string
}

variable "sg_description"{
    type = string 
}

variable "vpc_id"{
    type = string 
}

variable "common_tags"{
    type = map 
}

variable "sg_tags"{
    type = map
    default = {}
}


#default value user can override the rules
variable "outbound_rules"{
    type = list
    default = [
        {
            from_port = 0
            to_port = 0
            protocol = "-1" #all protocols it is allowing 
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}


variable "inbound_rules"{
    type = list
    default = []
}