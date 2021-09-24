output "bigip_mgmt_public_ips" {
  description = "Public IP addresses for the BIG-IP management interfaces"
  value       = module.bigip[*].mgmtPublicIP[0] 
}

output "bigip_password" {
  description = "BIG-IP management password"
  value       = random_string.password.result
  sensitive   = true
}

output bigip_address {
  value = module.bigip[0].mgmtPublicIP[0]
}
output remote_gre_address {
  value = "192.168.0.11"
}
output gre_tunnel_name {
  value = var.tunnel_name
}

output bigip_external_self {
  value = "${module.bigip[0].private_addresses.public_private.private_ip[0]}/24"
}
output bigip_internal_self {
  value = "${module.bigip[0].private_addresses.internal_private.private_ip[0]}/24"
}

output bigip_port {
  value = 443
}

output user {
  value = "admin"
}

output password {
  value     = random_string.password.result
  sensitive = true
}

output do_version {
  value = "1.24.0"
}

output as3_version {
  value = "3.28.0"
}

output ts_version {
  value = "1.20.0"
}

output fast_version {
  value = "1.9.0"
}

output nameserver {
  value = var.nameserver
}

output private_addresses {
  value = module.bigip[*].private_addresses.internal_private.private_ip[0]
}

output declarations {
  value = module.postbuild-config-do[*].payload
}