#!/bin/bash
# Router R1 Configuration
# Serial Interface Configuration

configure terminal

# Configure Serial0/0/1
interface Serial0/0/1
ip address 10.0.0.1 255.0.0.0
no shutdown
exit

# Configure Serial0/1/0
interface Serial0/1/0
ip address 11.0.0.1 255.0.0.0
no shutdown
exit

# Configure Serial0/1/1 (DCE)
interface Serial0/1/1
ip address 14.0.0.1 255.0.0.0
clock rate 64000
no shutdown
exit

end
write memory

