#!/bin/bash

INTF_IP=$(ip addr show $TANGO_INTF | grep inet | cut -d' ' -f6 | cut -d'/' -f1)

cat /opt/host/.mbf-env - << EOF > /opt/host/.starter-env
export ORBendPoint=giop:tcp:$INTF_IP:
EOF
