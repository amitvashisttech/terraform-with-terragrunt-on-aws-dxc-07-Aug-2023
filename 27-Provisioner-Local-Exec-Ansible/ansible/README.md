```
   29  apt-get install ansible -y
   30  ls
   31  ansible --version
   32  apt-get install ansible sshpass -y
   33  apt-get install sshpass -y
   34  ls
   35  mkdir 01-Inventory
   36  ls
   37  cd 01-Inventory/
   38  ls
   39  vim hosts
   40  vim hosts
   41  ls
   42  vi /etc/ssh/sshd_config
   43  passwd
   44  ansible all -i hosts -m ping -u root -k
   45  ssh root@localhost
   46  ansible all -i hosts -m ping -u root -k
   47  vim hosts
   48  ansible all -i hosts -m ping -u root -k
   49  ssh root@172.31.0.101
   50  ansible all -i hosts -m ping -u root -k
   51  ansible 172.31.0.105 -i hosts -m ping -u root -k
   52  ansible 172.31.0.101 -i hosts -m ping -u root -k
   53  ping 172.31.0.101
   54  ansible-doc  -l
   55  ansible-doc  yum
   56  ls
   57  df -h
   58  ansible all -i hosts -m command -a 'df -h' -u root -k
   59  uname -a
   60  ansible all -i hosts -m command -a 'uname -a' -u root -k

```