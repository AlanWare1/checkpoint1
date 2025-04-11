cfdisk
lsblk
"en commande et non gui"
fdisk /dev/sdb
part primaire n/p//6g/t/83
part swap n/p/4g/t/82

formatage
mkfs.ext4 /dev/sdb1
mkswap /dev/sdb2

activation du swap
swapon /dev/sdb2
ajout -f pour forcer

Point de montage
mkdir /mnt/data
cd /home
ls

![image](https://github.com/AlanWare1/checkpoint1/blob/main/ajout%20de%20l'UUID%20dans%20le%20etcfstab.jpg)

blkid /dev/sdb1
récupération de l'UUDI
nano /etc/fstab
ajoute de UUID=5f02f57a-26e4-4caa-9253-039668eee8d4 /mnt/data ext4 defaults 0 2 (avec un commentaire montage sdb1 sur data)
sauvegarde
systemcl daemon-reload
df -h
sudo mount -a

vérifier le swap
swapon --show

vérifier le montage
mount | grep /mnt/data
