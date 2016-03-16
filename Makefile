
.DEFAULT_GOAL := playbook

playbook:
	ansible-playbook playbook.yml

bootstrap:
	pacman -Sy --noconfirm python python-pip ansible


