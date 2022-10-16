device=sdd
fdisk /dev/$device
n
p
-
-
w

pvcreate /dev/${device}1

vgcreate vg0 /dev/${device}1

# Fix udev issue:
# https://unix.stackexchange.com/questions/574626/how-to-add-a-block-device-to-the-udev-database

udevadm control --reload-rules && udevadm trigger

# Lvcreate
# https://linux-lvm.redhat.narkive.com/9Pu8Wro2/lvcreate-device-not-cleared-aborting-failed-to-wipe-start-of-new-lv#post5

lvcreate -n Singularity --verbose --size 120G -Zn vg0
#50%FREE

## Solution: service udev restart
service udev restart
udevadm control --reload

mkfs.btrfs -L Singularity /dev/vg0/Singularity
