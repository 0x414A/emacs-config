# Emacs

This is a homegrown `emacs` config that I have more or less had for the past 2 years.

I use [cask](https://github.com/cask/cask) to manage packages. 

I also start up `emacs` in daemon-mode. 

Now with `evil-mode`!

![screenshot](https://cloud.githubusercontent.com/assets/13822200/14009318/8d04803a-f158-11e5-9700-60903108ae7a.png)

## Usage

Keybinding                  | Description
----------------------------|----------------------------------------------------------------------
<kbd>C-[</kbd>              | is how you get out of `insert` mode.
<kbd>M-t</kbd>              | brings up the fuzzy file switching thing provided by `fiplr`.
[⌘]+[t]                     | (OS X) brings up the fuzzy file switching thing provided by `fiplr`.
<kbd>M-{h,j,k,l}</kbd>      | can be used to navigate between split panes.
<kbd>SPC</kbd>              | `<leader>` key
<kbd>SPC-n</kbd>            | invokes the `neotree` pane.
<kbd>SPC-b</kbd>            | brings up the buffer switching modeline thingy.
<kbd>SPC-k</kbd>            | kills a buffer.
<kbd>C-x g</kbd>            | bring up the `magit` interface

And of course, the usual vim keybindings.

## Installation 

First, install [cask](https://github.com/cask/cask). See [Notes](#notes) for platform-specific notes.

``` bash
# Backup existing emacs directory
[-d $HOME/.emacs.d ] && mv $HOME/.emacs.d{,.bak}

# Clone emacs-config
git clone https://github.com/0x414A/emacs-config.git $HOME/.emacs.d

# Install casks
cd $HOME/.emacs.d && cask install
```

## Notes 

### On OS X

Install `cask` with `homebrew`:

	brew install cask

Then create a symlink from the `brew`-installed `cask` directory containing `cask.el` to `~/.cask`:

	ln -s /usr/local/Cellar/cask/*/ ~/.cask
	
Then navigate to 

### On Arch Linux

Install `cask` from the [AUR](https://aur.archlinux.org/packages/cask/).

Then create a symlink from the `brew`-installed `cask` directory containing `cask.el` to `~/.cask`:

    ln -s /usr/share/cask ~/.cask

### Arch Linux user daemon 

Create `~/.config/systemd/user/emacs.service`:

``` cfg
[Unit]
Description=Emacs: the extensible, self-documenting text editor

[Service]
Type=forking
ExecStart=/usr/bin/emacs --daemon
ExecStop=/usr/bin/emacsclient --eval "(kill-emacs)"
Restart=always

[Install]
WantedBy=default.target
```

Then enable it:

	systemctl --user enable emacs

## Note

I use Roboto Mono from [Powerline Fonts](https://github.com/powerline/fonts).

