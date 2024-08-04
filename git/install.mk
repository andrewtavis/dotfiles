.PHONY: git
ALL_TARGETS += git

git:
	./install_file.sh git/gitconfig ~/.gitconfig
