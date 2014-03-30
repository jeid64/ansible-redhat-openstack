#/bin/bash
sudo virsh secret-set-value --secret $( virsh secret-define --file <( echo "<secret ephemeral='no' private='no'><usage type='ceph'><name>client.volumes secret</name></usage></secret>" ) | cut -d' ' -f2 |  tee secret.uuid ) --base64 $( cat client.volumes.key ) && rm client.volumes.key && cat secret.uuid
