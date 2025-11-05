#!/bin/bash
# Router R4 Configuration
# Serial and GigabitEthernet Interface Configuration

configure terminal

# Configure GigabitEthernet0/0
interface GigabitEthernet0/0
ip address 192.168.3.1 255.255.255.0
no shutdown
exit

# Configure Serial0/0/0 (DCE)
interface Serial0/0/0
ip address 12.0.0.1 255.0.0.0
clock rate 64000
no shutdown
exit

# Configure Serial0/1/0 (DCE)
interface Serial0/1/0
ip address 11.0.0.2 255.0.0.0
clock rate 64000
no shutdown
exit

end
write memory

