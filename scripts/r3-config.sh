#!/bin/bash
# Router R3 Configuration
# Serial and GigabitEthernet Interface Configuration

configure terminal

# Configure GigabitEthernet0/0
interface GigabitEthernet0/0
ip address 192.168.2.1 255.255.255.0
no shutdown
exit

# Configure Serial0/0/0
interface Serial0/0/0
ip address 13.0.0.1 255.0.0.0
no shutdown
exit

# Configure Serial0/0/1
interface Serial0/0/1
ip address 12.0.0.2 255.0.0.0
no shutdown
exit

end
write memory

