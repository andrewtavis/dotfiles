ifeq ($(wildcard cfg.mk),)
$(error Missing dotfiles config file 'cfg.mk', check examples in 'config/' folder)
endif

include cfg.mk

ALL_TARGETS =

.PHONY: all default
default: all

ifeq ($(BREW),1)
include brew/install.mk
endif

ifeq ($(GIT),1)
include git/install.mk
endif

ifeq ($(ZSH),1)
include zsh/install.mk
endif

all: $(ALL_TARGETS)
