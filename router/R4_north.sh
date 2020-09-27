configure terminal
router ospf
interface eth0
ip ospf cost 10
do write
exit
router ospf
interface eth1
 ip ospf cost 10
do write
exit

