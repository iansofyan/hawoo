#konfigurasi addresses
echo "ip kamu"
read ip
tee /etc/netplan/50-cloud-init.yaml << EOF > /dev/null
network:
    ethernets:
        ens18:
            dhcp4: false
            addresses: [${ip}]
            routes:
            - to: default
              via: 10.10.10.254
            nameservers:
              addresses: [1.1.1.1, 8.8.4.4]
    version: 2
EOF
