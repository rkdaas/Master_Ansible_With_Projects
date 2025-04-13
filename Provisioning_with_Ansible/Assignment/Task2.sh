 Pem_File="/home/rkdaas/NewKey.pem"
 Pub_key="/home/rkdaas/my-key.pub"
 Server_Ip_File="ip-list.csv"
 
while IFS=, read -r ip user || [ -n "$ip" ]; do
    echo "copying key to $ip"
    ssh-copy-id -f -i "$Pub_key" -o IdentityFile="$Pem_File" "$user@$ip"
done < "$Server_Ip_File"
