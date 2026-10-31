# [dotfiles](https://codeberg.org/andrewtavis/dotfiles)

[![license](https://img.shields.io/github/license/andrewtavis/dotfiles.svg?label=%20)](https://codeberg.org/andrewtavis/dotfiles/src/branch/main/LICENSE.txt)

### Configurations for my development environments

This repo contains configuration files for my macOS and Ubuntu development environments.

> [!NOTE]
> There are some user specific settings included in these files. If you'd like to try out these configurations, please first check the code and personalize it for your needs.

## Maintenance

`dotfiles` is maintained at [codeberg.org/andrewtavis/dotfiles](https://codeberg.org/andrewtavis/dotfiles). Please visit this remote repository for issues and pull requests.

## Installation

```bash
# Clone this repository to a local .dotfiles directory:
git clone ssh://git@codeberg.org/andrewtavis/dotfiles.git $HOME/.dotfiles
# git clone https://codeberg.org/andrewtavis/dotfiles.git $HOME/.dotfiles

# Navigate to .dotfiles, choose a config file and run the scripts:
cd $HOME/.dotfiles

cp config/cfg.macos.mk cfg.mk
# or
cp config/cfg.linux.mk cfg.mk

make
```

## References

<details><summary>View referenced projects</summary>

- [GitHub:tymcauley/dotfiles](https://github.com/tymcauley/dotfiles)
- [GitHub:mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

</details>
