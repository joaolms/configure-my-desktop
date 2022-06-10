prepare:
	sudo apt update
	sudo apt install -y python3-pip ansible
	ansible-playbook playbook.yml

config:
	ansible-playbook playbook.yml --ask-become-pass