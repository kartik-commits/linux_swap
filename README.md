# Linux Swap Partitioning Script #

### Command ###

```bash
bash <(curl -L https://raw.githubusercontent.com/kartik-commits/linux_swap/main/deb_swap.sh)
```

Reboot the system and check if swap is present or not using `swapon` or `free -h` 


If swap is not there add this into filesystem table

* Open filesystem table using

```bash
gedit /etc/fstab
```
* Add this in the last line and save

```bash
/swapfile                                 none            swap    sw              0       0 
```


Inspired from and Credits to [SavvyNik](https://youtu.be/HSbBl31ohjE?si=4KBg-sR7yL3hTQTz)
