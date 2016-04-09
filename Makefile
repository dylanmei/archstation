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
		-M $(srcdir)/ansible-yaourt

ansible:
	# install ansible
	pacman -Sy --noconfirm sudo curl python python-pip ansible

yaourt:
	# scrape yaourt ansible module
	mkdir -p $(srcdir)/ansible-yaourt
	curl "https://raw.githubusercontent.com/TecSet/ansible-modules-extras/devel-pacman-yaourt-integration/packaging/os/yaourt.py" \
		-o $(srcdir)/ansible-yaourt/yaourt.py

bootstrap: ansible yaourt
