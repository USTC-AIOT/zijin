# fish setting
set -U fish_user_paths $HOME/.local/bin/ $fish_user_paths

# [Installing Ansible — Ansible Documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
python -m pip install --user ansible
python -m pip install --user paramiko
# [Installing Ansible — Ansible Documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#adding-ansible-command-shell-completion)
python -m pip install argcomplete
# [Configuring Ansible — Ansible Documentation](https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html)
http -d https://cdn.jsdelivr.net/gh/ansible/ansible@devel/examples/ansible.cfg

# Test
ansible all -m ping -i hosts > Results/PingTest


ansible-galaxy collection install ansible.utils
# [Ansible Galaxy](https://galaxy.ansible.com/community/zabbix)
ansible-galaxy collection install community.zabbix