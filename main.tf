data "akamai_group" "my_group_id" {
     group_name   = "trejos"
     contract_id  = "1-5C13O8"
}

output "my_group_id" {
    value = data.akamai_group.my_group_id
}

data "akamai_properties" "my_properties" {
    group_id    = "237657"
    contract_id = "1-5C13O8"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}

data "akamai_appsec_configuration" "sec-configurations" {
     name ="2024_LAB_BrBio"
}

output "configuration-list" {
  value = data.akamai_appsec_configuration.sec-configurations.output_text
}
