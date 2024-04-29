resource_group_name  = "mk-rg-01"
location             = "South India"
virtual_network_name = "HubVNet"
address_space        = ["10.0.0.0/16"]
subnet_name          = "HubSubnet1"
address_prefixes     = ["10.0.0.0/24"]


vm_count       = 2
vm_prefix      = "mk"
vm_size        = "Standard_DS1_v2"
admin_username = "mkadmin"
admin_password = "P@$$w0rd1234!"


