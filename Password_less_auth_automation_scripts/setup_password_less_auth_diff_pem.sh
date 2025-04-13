#!/bin/bash

Pub_key="home/rkdaas/my-key.pub"
csv_file="servers.csv"

while IFS=, read -r ip user || [ -n "$ip" ]; do
	echo "copying key to $ip using $pem"
	ssh-copy-id -f -i $Pub_key -o "IdentityFile=$pem" ubuntu@$ip
done<"$csv_file"

