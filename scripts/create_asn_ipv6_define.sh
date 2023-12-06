#!/bin/bash

# Example: bgpq4 -Ab6 -R 48 -m 48 -l 'define AS201723_IPV6' AS201723


## Create own definitions

# bgpq4 -A6bR 48 -m 48 -l 'define AS215956_IPV6' AS215956
FILE="/etc/bird/default/define/AS215956_IPV6"
echo "Running: \"bgpq4 -A6bR 48 -m 48 -l 'define AS215956_IPV6' AS215956\"..."
echo "# bgpq4 -A6bR 48 -m 48 -l 'define AS215956_IPV6' AS215956" > ${FILE}
bgpq4 -A6bR 48 -m 48 -l 'define AS215956_IPV6' AS215956 >> ${FILE}
chown bird:bird ${FILE}

# bgpq4 -A6bR 48 -m 48 -l 'define AS_MYIP_IPV6' AS215956:AS-MYIP
FILE="/etc/bird/default/define/AS_MYIP_IPV6"
echo "Running: \"bgpq4 -A6bR 48 -m 48 -l 'define AS_MYIP_IPV6' AS215956:AS-MYIP\"..."
echo "# bgpq4 -A6bR 48 -m 48 -l 'define AS_MYIP_IPV6' AS215956:AS-MYIP" > ${FILE}
bgpq4 -A6bR 48 -m 48 -l 'define AS_MYIP_IPV6' AS215956:AS-MYIP >> ${FILE}
chown bird:bird ${FILE}

# bgpq4 -t4b -l 'define AS_MYIP' AS215956:AS-MYIP
FILE="/etc/bird/default/define/AS_MYIP"
echo "Running: \"bgpq4 -t4b -l 'define AS_MYIP' AS215956:AS-MYIP\"..."
echo "# bgpq4 -t4b -l 'define AS_MYIP' AS215956:AS-MYIP" > ${FILE}
bgpq4 -t4b -l 'define AS_MYIP' AS215956:AS-MYIP >> ${FILE}
chown bird:bird ${FILE}

# bgpq4 -t4b -l 'define AS_MYIP_UPSTREAM' AS215956:AS-UPSTREAM
FILE="/etc/bird/default/define/AS_MYIP_UPSTREAM"
echo "Running: \"bgpq4 -t4b -l 'define AS_MYIP_UPSTREAM' AS215956:AS-UPSTREAM\"..."
echo "# bgpq4 -t4b -l 'define AS_MYIP_UPSTREAM' AS215956:AS-UPSTREAM" > ${FILE}
bgpq4 -t4b -l 'define AS_MYIP_UPSTREAM' AS215956:AS-UPSTREAM >> ${FILE}
chown bird:bird ${FILE}



## Create loop for peering sessions
