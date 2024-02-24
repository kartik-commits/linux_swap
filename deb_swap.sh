cd /
sudo swapoff /swapfile
sudo rm -rf swapfile
echo
echo
echo "Deleted pre-existing swap partition"
echo
echo
echo "Enter desired swap size in GB, e.g. for 8GB just enter 8"
read swap_size
swap_size=$((swap_size * 1024))
echo
echo
sudo dd if=/dev/zero of=/swapfile bs=1M count="$swap_size" status=progress
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo
echo
echo "Done...."
echo 
echo
