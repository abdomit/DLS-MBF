#!/bin/bash

IP_ON_INTF=$(ip addr show $TANGO_INTF | grep inet | cut -d' ' -f6 | cut -d'/' -f1)
export ORBendPoint=giop:tcp:$IP_ON_INTF:
/opt/os/bin/Starter $1
