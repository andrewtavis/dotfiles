ifeq ($(wildcard config.mk),)
$(error Missing dotfiles config file 'config.mk'. Check examples in 'config/' directory)
endif

include config.mk

ALL_TARGETS =

.PHONY: all default
default: all

ifeq ($(BREW),1)
include brew/install.mk
endif

ifeq ($(GIT),1)
include git/install.mk
endif

ifeq ($(MACOS),1)
include macos/install.mk
endif

ifeq ($(ZSH),1)
include zsh/install.mk
endif

all: $(ALL_TARGETS)
