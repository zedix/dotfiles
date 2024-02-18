# Setup Mac OS X

## Install Homebrew + packages

https://brew.sh/

Homebrew installs packages to their own directory and then symlinks their files into /usr/local.

```sh
# install homebrew
❯ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

❯ brew update
❯ brew install ack
# ❯ brew install caddy
❯ brew install tree
# ❯ brew install git (2.34.0  vs git version 2.30.1 (Apple Git-130))
❯ brew install node (v17.0.1)
# ❯ brew install nvm
❯ brew install neofetch
❯ brew install yarn (1.22.17)
❯ brew install ansible (2.11.6)
❯ brew install php@8.1

# GPG
❯ brew install gnupg
# gpg --full-generate-key

❯ yarn global add @vue/cli
❯ yarn global add netlify-cli

# ❯ brew install httpie
# ❯ brew install packer
# ❯ brew install hub
```

## Install Z shell

```sh
❯ zsh --version
❯ brew install zsh zsh-completions
```

## Install dotfiles

```sh
❯ zsh -c "`curl -fsSL https://raw.githubusercontent.com/zedix/dotfiles/master/install.sh`"
❯ git config --global user.email user@domain.com
❯ chsh -s /bin/zsh
```

## Set up SSH public key authentication on Github / Bitbucket

https://help.github.com/articles/connecting-to-github-with-ssh/
https://docs.gitlab.com/ee/ssh/

```sh
❯ ls -al ~/.ssh
# Lists the files in your .ssh directory, if they exist
```

Generating a new SSH key

```sh
❯ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

Generating public/private rsa key pair.
Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
Enter passphrase (empty for no passphrase): [Type a passphrase]
Enter same passphrase again: [Type passphrase again]

❯ ssh-add -K ~/.ssh/id_rsa.pub
```

## Set up SSH public key authentication on remote servers

Using [ssh-copy-id](https://www.ssh.com/ssh/copy-id) tool:

```sh
❯ ssh-copy-id -pXXXX remote@XX.XX.XX.XX
    /usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/Users/xxx/.ssh/id_rsa.pub"
    /usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
    /usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
    remote@XX.XX.XX.XX’s password:

Number of key(s) added:  1

❯ ssh remote@XX.XX.XX.XX -pXXXX
❯ vim ~/.ssh/authorized_keys
```

Or:

```sh
❯ cat ~/.ssh/id_rsa.pub | ssh remote@XX.XX.XX.XX -pXXXX "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```

## Configure NVM

```sh
❯ nvm install node        # install most recent Node stable version
❯ nvm ls                  # list installed Node version
❯ nvm use node            # use stable as current version
❯ nvm ls-remote           # list all the Node versions you can install
❯ nvm alias default node  # set the installed stable version as the default Node
```

## System Preferences & Security

- Install fonts into `/Library/Fonts`
- System Preferences > Keyboard > Text > Disable “Correct spelling automatically”
- System Preferences > Security and Privacy > FileVault > On (makes sure SSD is securely encrypted)
- System Preferences > Security and Privacy > Firewall > On (extra security measure)
- System Preferences > Security and Privacy > General > Allow App Store and identified developers
- System Preferences > File Sharing > Off
- System Preferences > Trackpad > Tap to click

- Show hidden files in Finder

```
defaults write com.apple.finder AppleShowAllFiles true
killall Finder
```

Run `~/dotfiles/bin/set-default`

## Install Applications

```sh
❯ brew cask search <package>
❯ brew cask install 'dropbox'
```

- ⤓ [1Password 7](https://1password.com/fr/downloads/mac/)
- ⤓ [Alfred 4](http://www.alfredapp.com/) Replacement for spotlight.
- ⤓ [IK Product Manager app](https://www.ikmultimedia.com/products/axeio/index.php?p=download)
    -> [AmpliTube 5](https://www.ikmultimedia.com/products/amplitube5/) via IK Product Manager
    -> [Axe IO Control Panel](https://www.ikmultimedia.com/products/axeio/index.php?p=download)
- ⤓ [App Cleaner](https://freemacsoft.net/appcleaner/)
- ⤓ [Bartender 3](https://www.macbartender.com/)
- ⤓ Bitwarden
- ⤓ Battle.net
- ⤓ [Clean my mac](https://macpaw.com/fr/cleanmymac)
- ⤓ [Clean shot](https://cleanshot.com/)
- ⤓ [Contrast Ratio](http://leaverou.github.io/contrast-ratio/)
- 🍏 DaisyDisk
- ⤓ [Docker](https://docs.docker.com/docker-for-mac/install/)
- ⤓ [Dropbox](https://www.dropbox.com/) File syncing to the cloud.
- ⤓ [EyeTV](https://www.geniatech.eu/fr/software/)
- ⤓ [Firefox](https://www.mozilla.org/fr/firefox/new/)
- ⤓ [F.lux](https://justgetflux.com/)
- ⤓ [Google Chrome](https://www.google.com/intl/fr_ALL/chrome/)
- ⤓ [ImageAlpha](https://pngmini.com/)
- ⤓ [ImageOptim](https://imageoptim.com/mac)
- ⤓ [iStat Menus 6](https://bjango.com/mac/istatmenus/)
- ⤓ [iTerm2](https://www.iterm2.com/)
- ⤓ [LittleSnitch](https://www.obdev.at/products/littlesnitch/index.html)
- ⤓ [Memory Clean 2](https://fiplab.com/apps/memory-clean-for-mac)
- ⤓ Molotov
- ≈ [Moom](https://manytricks.com/moom/)
- ⤓ Ngrok
- ⤓ [Omnifocus](https://www.omnigroup.com/omnifocus)
- 🍏 Pixelmator Pro 2.3 (19,99 €)
- ⤓ [PDF Toolkit+](https://itunes.apple.com/us/app/pdf-toolkit-+/id545164971?mt=12) App to cut/split/merge pdfs easily.
- ⤓ [Poedit](https://poedit.net/)
- ⤓ [Postman](https://www.getpostman.com/)
- ⤓ Product Hunt
- 🍏 Reeder
- ⤓ Screaming Frog SEO Spider
- ⤓ [Shift](https://tryshift.com/)
- ⤓ [Sip](https://sipapp.io/) - Color picker
- ⤓ Skype
- 🍏 Slack
- ⤓ [Spotify](https://www.spotify.com/fr/download/mac/)
- ⤓ [Station](https://getstation.com/)
- ⤓ Textual 5
- ⤓ [Transmission](http://www.transmissionbt.com/) A fast, easy and free BitTorrent client.
- ⤓ [Transmit](https://panic.com/transmit/)
- ⤓ [Table Plus](https://tableplus.io/)
    - 🍏 [Sequel Ace](https://sequel-ace.com/)
- ⤓ [Timemator 2](https://timemator.com/)
- 🍏 Tweetbot
- 🍏 [Tyme 2](https://www.tyme-app.com) - https://www.producthunt.com/posts/tyme-2
- ⤓ Unison
- ⤓ [Vagrant](https://www.vagrantup.com/downloads.html)
- ⤓ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- ⤓ [VLC](https://www.videolan.org/vlc/index.fr.html)
- ⤓ [VSCode](https://code.visualstudio.com/download)
- 🍏 [WireGuard VPN](https://www.wireguard.com/)


## Configure Applications

- Alfred 4
    - System Preferences > Keyboard > Shortcuts > Spotlight > [ ] Afficher la recherche Spotlight
    - Alfred > Preferences > Alfred Hotkey : ⌘ Space

- iTerm2
    - General > Services > [✔] Update to beta test versions when available
    - General > Startup > Open Window Default Arrangement
    - General > Icon > Built-in Icon for Current App
    - Appearance > General > Theme Minimal
    - Appearance > General > Tab bar location > Left
    - Appearance > Windows > [✔] Hide scrollbars
    - Appearance > Panes > [ ] Show per pane title bar
    - Profile > Text > Cursor > Vertical bar
    - Profile > Text > Cursor > Use thin stroke for anti-aliased text: **Never**
    - Profile > Text > Font > 15pt Operator Mono Book (Anti-aliased) / 15pt JetBrains Mono
    - Profile > Text > Font > [✔] Use ligatures
    - Profile > Terminal > Scroll 10 000

- VSCode
    - Install command line tools: `Shell command: install 'code' command in PATH`

- Vagrant
    -> "VBoxManage: error: Failed to create the host-only adapter"
        -> Go to: Security & Privacy and under the General Tab, click the "Oracle America, Inc." Allow button.
        -> Reinstall Vagrant

- Calendar
    -> To sync on MacOS a Shared Google Calendar, go to https://calendar.google.com/calendar/syncselect

## Wallpapers

- https://hector.me/wavey (https://twitter.com/adamwathan/status/1291357343352070144)

## Virtualization for Apple Silicon (Ubuntu ARM VMs for M1 Macs)

- [Laravel Homestead](https://github.com/laravel/docs/pull/7403/files)
> If you are using Apple Silicon, you should add `box: laravel/homestead-arm` to your `Homestead.yaml` file. Apple Silicon requires the Parallels provider.

- [Parallels](https://www.parallels.com/products/desktop/pro/)
    -> https://app.vagrantup.com/zedix/boxes/debian10-arm64
    -> vagrant plugin install vagrant-parallels
    -> vagrant up --provider=parallels

- [UTM](https://mac.getutm.app/)
    -> https://github.com/hashicorp/vagrant/issues/12518
    -> https://github.com/roots/trellis/issues/1253#issuecomment-948177425

- [VMware-Fusion](https://github.com/roots/trellis/issues/1253#issuecomment-977449310)
