SHELL := /bin/bash

# VARIABLES
targets = base16-shell bash i3 polybar ranger vim zathura gitconfig Xresources \
		  zsh tmux sway nvim

# DIRECTORIES
INSTALL = install

all: $(targets)

base16-shell: FORCE
	$(SHELL) $(INSTALL)/install_base16.sh

bash: FORCE
	$(SHELL) $(INSTALL)/install_bash.sh

zsh: FORCE
	$(SHELL) $(INSTALL)/install_zsh.sh

i3: FORCE
	$(SHELL) $(INSTALL)/install_i3.sh

polybar: FORCE
	$(SHELL) $(INSTALL)/install_polybar.sh

ranger: FORCE
	$(SHELL) $(INSTALL)/install_ranger.sh

vim: FORCE
	$(SHELL) $(INSTALL)/install_vim.sh

nvim: FORCE
	$(SHELL) $(INSTALL)/install_nvim.sh

zathura: FORCE
	$(SHELL) $(INSTALL)/install_zathura.sh

gitconfig: FORCE
	$(SHELL) $(INSTALL)/install_gitconfig.sh

Xresources: FORCE
	$(SHELL) $(INSTALL)/install_xresources.sh

tmux: FORCE
	$(SHELL) $(INSTALL)/install_tmux.sh

sway: FORCE
	$(SHELL) $(INSTALL)/install_sway.sh

FORCE: ;
