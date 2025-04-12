#!/bin/bash 

Pem_File="home/rkdaas/NewKey.pem"
Pub_key="home/rkdaas/my-key.pub"
Server_Ip_File="ip-list.txt"

for ip in $(cat $Server_Ip_File);do
      echo "copying key to $ip"
      ssh-copy-id -f -i $Pub_key -o IdentityFile=$Pem_File ubuntu@$ip
done

