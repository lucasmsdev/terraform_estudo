resource "aws_defaut_network_acl" "example" {
    default_route_table_id = aws_vpc.example.default_route_table_id
    
    route {
        cidr_block = "10.0.1.0/24"
        gateway_id = aws_internet_gateway.example.id
    }
    
    route {
        ipv6 = "10.0.1.0/24"
        gateway_id = aws_internet_gateway.example.id
    }
    
    tags = {
        Name : "example"
    }
}