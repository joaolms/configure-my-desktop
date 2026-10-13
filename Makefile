prepare:
	sudo apt update
	sudo apt install -y python3-pip ansible
	ansible-playbook playbook.yml

dotfile:
	rm -rfv ~/.config/nvim
	mkdir ~/.config/nvim
	ln -s ${PWD}/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

config:
	ansible-playbook playbook.yml --ask-become-pass
