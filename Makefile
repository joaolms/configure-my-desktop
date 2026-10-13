prepare:
	sudo apt update
	sudo apt install -y python3-pip ansible
	ansible-playbook playbook.yml

dotfile:
	rm -rfv ~/.config/nvim
	mkdir -p ~/.config
	ln -s ${PWD}/dotfiles/nvim ~/.config/nvim

config:
	ansible-playbook playbook.yml --ask-become-pass
