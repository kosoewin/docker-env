#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	k8s_master.ayalab.local    k8s_master
192.168.101.20	k8s_worker01.ayalab.local  k8s_worker01
192.168.101.30	k8s_worker02.ayalab.local  k8s_worker02
EOF
