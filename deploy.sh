ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
for host in paas.193.95.99.75 paas-node-infra.193.95.99.75 paas-node-app.193.95.99.75; \
    do ssh-copy-id -i /root/.ssh/id_rsa.pub $host; \
    done

ansible-playbook /home/vagrant/openshift-ansible/playbooks/byo/config.yml
