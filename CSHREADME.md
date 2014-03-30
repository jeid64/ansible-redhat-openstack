Hey, I have modified this Playbook to integrate Ceph into our Openstack cluster. Make sure you setup the following before running this

TODO: COPY CEPH.CONF to NODES!

Have the keyrings in the files folder in the controller role. Keyrings are made like 
ceph auth get-or-create client.images > roles/controller/files/ceph.client.images.keyring
ceph auth get-or-create client.volumes > roles/controller/files/ceph.client.volumes.keyring

Then put the key for libvirt in the compute node files folder
ceph auth get-key client.volumes > roles/compute/files/client.volumes.key

After this ansible is run, run the shell script in this folder then take the output and put it in cinder.conf as the uuid.
