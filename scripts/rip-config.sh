#!/bin/bash
# RIP Routing Protocol Configuration
# Apply to all routers (R1-R12)

configure terminal

# Enable RIP routing protocol
router rip

# Configure network statements for all networks
network 10.0.0.0
network 11.0.0.0
network 12.0.0.0
network 13.0.0.0
network 14.0.0.0
network 15.0.0.0
network 16.0.0.0
network 17.0.0.0
network 18.0.0.0
network 19.0.0.0
network 20.0.0.0
network 21.0.0.0
network 22.0.0.0
network 23.0.0.0
network 192.168.1.0
network 192.168.2.0
network 192.168.3.0
network 194.168.1.0
network 194.168.2.0
network 194.168.3.0
network 194.168.4.0
network 195.168.1.0
network 195.168.2.0
network 195.168.3.0
network 195.168.4.0

exit
end
write memory

