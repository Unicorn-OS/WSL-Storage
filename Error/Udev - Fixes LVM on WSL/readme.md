# Solution!
**Run all 3 of these, then mkfs will work:**
```
service udev restart
udevadm control --reload
udevadm control --reload-rules && udevadm trigger
```

## Keep: prime:
https://github.com/dorssel/usbipd-win/wiki/WSL-support
https://unix.stackexchange.com/questions/574626/how-to-add-a-block-device-to-the-udev-database
https://unix.stackexchange.com/questions/508790/automount-lvm-logical-volume-with-a-udev-rule-and-udisks2

> After updating your rules run udevadm control --reload. If you get an error that "Failed to send reload request: No such file or directory", run sudo service udev restart then run it again.


# misc
sch: https://www.google.com/search?q=udevadm+lvm
https://www.google.com/search?q=Failed+to+send+reload+request%3A+No+such+file+or+directory+udevadm


## Keep: lvm2 device detection uses Udev!
https://www.claudiokuenzler.com/blog/1029/warning-device-dev-not-initialized-in-udev-database-chroot-rescue-mode
