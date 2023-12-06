#!/bin/bash

## Create fogIXP definitions

# bgpq4 -t4b -l 'define AS_IXP_IFOG' AS-IFOG
FILE="/etc/bird/default/define/AS_IXP_IFOG"
echo "Running: \"bgpq4 -t4b -l 'define AS_IXP_IFOG' AS-IFOG\"..."
echo "# bgpq4 -t4b -l 'define AS_IXP_IFOG' AS-IFOG" > ${FILE}
bgpq4 -t4b -l 'define AS_IXP_IFOG' AS-IFOG >> ${FILE}
chown bird:bird ${FILE}



## Create BGP.Exchange definitions

# bgpq4 -t4b -l 'define AS_IXP_BGPEXCHANGE' AS-BGPEXCHANGE-PEERS
FILE="/etc/bird/default/define/AS_IXP_BGPEXCHANGE"
echo "Running: \"bgpq4 -t4b -l 'define AS_IXP_BGPEXCHANGE' AS-BGPEXCHANGE-PEERS\"..."
echo "# bgpq4 -t4b -l 'define AS_IXP_BGPEXCHANGE' AS-BGPEXCHANGE-PEERS" > ${FILE}
bgpq4 -t4b -l 'define AS_IXP_BGPEXCHANGE' AS-BGPEXCHANGE-PEERS >> ${FILE}
chown bird:bird ${FILE}



## Create IXPS definitions

# bgpq4 -t4b -l 'define AS_IXP_IXPS' AS-IXPS
FILE="/etc/bird/default/define/AS_IXP_IXPS"
echo "Running: \"bgpq4 -t4b -l 'define AS_IXP_IXPS' AS-IXPS\"..."
echo "# bgpq4 -t4b -l 'define AS_IXP_IXPS' AS-IXPS" > ${FILE}
bgpq4 -t4b -l 'define AS_IXP_IXPS' AS-IXPS >> ${FILE}
chown bird:bird ${FILE}
