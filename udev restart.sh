
# Run after LVM Vgcreate!
## Solution: service udev restart
service udev restart
udevadm control --reload
