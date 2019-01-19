SHELL := /bin/bash

# VARIABLES
targets = base16-shell bash i3 polybar ranger vim zathura gitconfig Xresources

# DIRECTORIES
INSTALL = install

all: $(targets)

base16-shell: FORCE
	$(SHELL) $(INSTALL)/install_base16.sh

bash: FORCE
	$(SHELL) $(INSTALL)/install_bash.sh

i3: FORCE
	$(SHELL) $(INSTALL)/install_i3.sh

polybar: FORCE
	$(SHELL) $(INSTALL)/install_polybar.sh

ranger: FORCE
	$(SHELL) $(INSTALL)/install_ranger.sh

vim: FORCE
	$(SHELL) $(INSTALL)/install_vim.sh

zathura: FORCE
	$(SHELL) $(INSTALL)/install_zathura.sh

gitconfig: FORCE
	$(SHELL) $(INSTALL)/install_gitconfig.sh

Xresources: FORCE
	$(SHELL) $(INSTALL)/install_xresources.sh

FORCE: ;
