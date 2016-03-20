srcdir   := /usr/src
passfile ?= vault_pass.txt
ifneq ($(tags),)
	playbook_tags="--tags=$(tags)"
endif
ifneq ($(passfile),)
	vault_password_file="--vault-password-file=$(passfile)"
endif

.DEFAULT_GOAL := playbook

playbook:
	ansible-playbook playbook.yml $(playbook_tags) $(vault_password_file) \
		-M $(srcdir)/ansible-module-cower

bootstrap:
	# install ansible
	pacman -Sy --noconfirm curl python python-pip ansible
	# clone cower ansible module
	git clone https://github.com/dylanmei/ansible-module-cower.git $(srcdir)/ansible-module-cower
