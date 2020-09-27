cat >> /usr/local/etc/ospfd.conf << EOF
interface eth0
 ip ospf cost 10
interface eth1
 ip ospf cost 10
interface lo
router ospf
 ospf router-id 0.0.0.4
 network 10.0.11.0/24 area 0.0.0.0
 network 10.0.12.0/24 area 0.0.0.0
line vty
EOF
zebra -d
ospfd -d
