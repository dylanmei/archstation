
.DEFAULT_GOAL := playbook

playbook:
	ansible-playbook playbook.yml --vault-password-file vault_pass.txt

bootstrap:
	pacman -Sy --noconfirm python python-pip ansible


