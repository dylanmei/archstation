passfile ?= vault_pass.txt
srcdir   := /usr/src

.DEFAULT_GOAL := playbook

playbook:
	ansible-playbook playbook.yml --tags=$(tags) --vault-password-file=$(passfile) \
		-M $(srcdir)/ansible-module-cower

bootstrap:
	# install ansible
	pacman -Sy --noconfirm curl python python-pip ansible
	# clone cower ansible module
	git clone https://github.com/dylanmei/ansible-module-cower.git $(srcdir)/ansible-module-cower
