sudo userdel mysql
sudo useradd -u 999 mysql
sudo mount -t vboxsf -o uid=999,gid=999 wordpress-application_mysql /wordpress-application/mysql
sudo userdel www-data
sudo useradd -u 82 www-data
sudo mount -t vboxsf -o uid=82,gid=82 wordpress-application_wordpress /wordpress-application/wordpress
