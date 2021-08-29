# download the binaries
wget https://archive.apache.org/dist/kafka/2.2.0/kafka_2.12-2.2.0.tgz

# unpack the tarball
tar -xvf kafka_2.12-2.2.0.tgz

# rename dir to kafka
mv kafka_2.12-2.2.0 kafka

# change dir into kafka
cd kafka

# install java
sudo apt install -y default-jdk

# verify java version
java -version

# disable RAM swap
swapoff -a

# remove swap from fstab
sudo sed -i '/ swap / s/^/#/' /etc/fstab

# change file permission
sudo chmod +x /etc/init.d/zookeeper

# change ownership to root
sudo chown root:root /etc/init.d/zookeeper

# install init script
sudo update-rc.d zookeeper defaults

# start the zookeeper service
sudo service zookeeper start

# verify the service is up
sudo service zookeeper status