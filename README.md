## Installation

1. Install stow

1. Install zsh plugins:

    ```sheell
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```

1. Install fzf

1. Install dotfiles

    ```shell
    cd ~
    git clone --recursive https://github.com/Uran198/dotfiles.git
    stow vim shell
    ```

    Alternative to `--recursive`:

    ```shell
    git clone https://github.com/Uran198/dotfiles.git
    git submodule init
    git submodule update
    ```

## Updating

```shell
stow -R vim shell
```

## Additional configurations

* Setup ssh for Github, use ssh-agent to access keys with password. Keys
  should be passphrase protected.

* To open terminal maximized run `exo-preferred-applications` and change
  TerminalEmulator to `/usr/bin/xfce4-terminal --maximize`

* Download and install from [Skype.com](https://skype.com)

* Download and install from [Dropbox.com](https://www.dropbox.com/install-linux)

## TODO

* Move to use ansible. (Experiment in a VM.)
