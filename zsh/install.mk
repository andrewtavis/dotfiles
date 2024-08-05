.PHONY: zsh
ALL_TARGETS += zsh

ZDOTDIR := ~/.config/zsh

zsh:
	mkdir -p $(ZDOTDIR)/zsh-syntax-highlighting $(ZDOTDIR)/zsh-autosuggestions
	./install_file.sh zsh/zshenv         ~/.zshenv
	./install_file.sh zsh/zshrc          $(ZDOTDIR)/.zshrc
	./install_file.sh zsh/aliases.zsh    $(ZDOTDIR)/aliases.zsh
	./install_file.sh zsh/completion.zsh $(ZDOTDIR)/completion.zsh
	./git_clone_or_pull.sh https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZDOTDIR)/zsh-syntax-highlighting
	./git_clone_or_pull.sh https://github.com/zsh-users/zsh-autosuggestions.git $(ZDOTDIR)/zsh-autosuggestions
