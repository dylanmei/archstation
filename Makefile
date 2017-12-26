ifeq ($(playbook),)
	playbook="playbook.yml"
endif
ifneq ($(tags),)
	playbook_tags="--tags=$(tags)"
endif

.DEFAULT_GOAL := playbook

playbook:
	ansible-playbook $(playbook) $(playbook_tags)
