
ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
for host in paas.hsse.technology paas-node-infra.hsse.technology paas-node-app.hsse.technology; \
    do ssh-copy-id -i /root/.ssh/id_rsa.pub $host; \
    done

ansible-playbook /home/vagrant/openshift-ansible/playbooks/byo/config.yml
