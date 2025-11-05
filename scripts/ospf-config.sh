#!/bin/bash
# OSPF Routing Protocol Configuration
# Apply to all routers (R1-R12)

configure terminal

# Enable OSPF routing protocol with process ID 1
router ospf 1

# Configure network statements with wildcard masks for Area 0
network 10.0.0.0 0.255.255.255 area 0
network 11.0.0.0 0.255.255.255 area 0
network 12.0.0.0 0.255.255.255 area 0
network 13.0.0.0 0.255.255.255 area 0
network 14.0.0.0 0.255.255.255 area 0
network 15.0.0.0 0.255.255.255 area 0
network 16.0.0.0 0.255.255.255 area 0
network 17.0.0.0 0.255.255.255 area 0
network 18.0.0.0 0.255.255.255 area 0
network 19.0.0.0 0.255.255.255 area 0
network 20.0.0.0 0.255.255.255 area 0
network 21.0.0.0 0.255.255.255 area 0
network 22.0.0.0 0.255.255.255 area 0
network 23.0.0.0 0.255.255.255 area 0
network 192.168.1.1 0.0.0.255 area 0
network 192.168.2.1 0.0.0.255 area 0
network 192.168.3.1 0.0.0.255 area 0
network 194.168.1.1 0.0.0.255 area 0
network 194.168.2.1 0.0.0.255 area 0
network 194.168.3.1 0.0.0.255 area 0
network 194.168.4.1 0.0.0.255 area 0
network 195.168.1.1 0.0.0.255 area 0
network 195.168.2.1 0.0.0.255 area 0
network 195.168.3.1 0.0.0.255 area 0
network 195.168.4.1 0.0.0.255 area 0

exit
end
write memory

