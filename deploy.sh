
ssh-keygen -b 2048 -t rsa -f /root/.ssh/id_rsa -q -N ""
for host in monitoring.smti.com.tn paas-node-infra.smti.com.tn paas-node-app.smti.com.tn; \
    do ssh-copy-id -i /root/.ssh/id_rsa.pub $host; \
    done

ansible-playbook /home/vagrant/openshift-ansible/playbooks/byo/config.yml
