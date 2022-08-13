#!/bin/bash

# Update /etc/hosts file
sudo bash -c 'cat >> /etc/hosts' << EOF
192.168.101.10	k8smaster.ayalab.local    k8smaster
192.168.101.20	k8sworker01.ayalab.local  k8sworker01
192.168.101.30	k8sworker02.ayalab.local  k8sworker02
EOF
