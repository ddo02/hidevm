#!/usr/bin/env sh

if [ -z "$1" ]
then
    echo "Usage:"
    echo "$0 VIRTUAL_MACHINE_NAME"
    echo "Exit!"
    exit 1
fi

VMNAME=$1
DMISERIAL="000000000"
AHCISERIAL="00000000000000000000"
AHCIREV="00000000"

vboxmanage setextradata $VMNAME "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVendor" "American Megatrends Inc"
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVersion" "2.1.0"
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVendor" "ASUSTek Computer"
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/pcbios/0/Config/DmiSystemSerial" $DMISERIAL
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/ahci/0/Config/Port0/SerialNumber" $AHCISERIAL
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/ahci/0/Config/Port0/FirmwareRevision" $AHCIREV
vboxmanage setextradata $VMNAME "VBoxInternal/Devices/ahci/0/Config/Port0/ModelNumber" "SEAGATE ST3750525AS"
