prepare:
	sudo apt update
	sudo apt install -y python3-pip ansible
	ansible-playbook playbook.yml

dotfile:
	# NeoVIm
	rm -rfv ~/.config/nvim
	mkdir -p ~/.config
	ln -s ${PWD}/dotfiles/nvim ~/.config/nvim
	# Konsole
	rm -rfv ~/.config/konsolerc ~/.local/share/konsole/
	mkdir -p ~/.local/share/
	ln -s ${PWD}/dotfiles/konsole/konsolerc ~/.config/konsolerc
	ln -s ${PWD}/dotfiles/konsole/konsole ~/.local/share/konsole

config:
	ansible-playbook playbook.yml --ask-become-pass
