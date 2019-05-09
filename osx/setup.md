# Setup Mac OS X

## Install Homebrew + packages

https://brew.sh/

Homebrew installs packages to their own directory and then symlinks their files into /usr/local.

```sh
# install homebrew
❯ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

❯ brew update
❯ brew install ack
❯ brew install tree
❯ brew install git (2.17.1)
❯ brew install node (v8.9.3)
❯ brew install nvm
❯ brew install yarn (1.9.4)
❯ brew install ansible (2.6.2)

❯ yarn global add @vue/cli
❯ yarn global add gulp-cli
❯ yarn global add lighthouse

# ❯ brew install httpie
# ❯ brew install php72
# ❯ brew install php72-intl
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
❯ ssh-copy-id remote@XX.XX.XX.XX -pXXXX
```

Or manually:

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

Run `~/dotfiles/bin/set-default`

## Install Applications

```sh
❯ brew cask search <package>
❯ brew cask install 'dropbox'
```

- ⬇ 1Password 7
- ⬇ [Alfred 3](http://www.alfredapp.com/) Replacement for spotlight.
- ⬇ [App Cleaner](https://freemacsoft.net/appcleaner/)
- ⬇ [Bartender 3](https://www.macbartender.com/)
- ⬇ Battle.net
- ⬇ [Contrast Ratio](http://leaverou.github.io/contrast-ratio/)
- ⬇ Disk Inventory X
- ⬇ [Docker](https://docs.docker.com/docker-for-mac/install/)
- ⬇ [Dropbox](https://www.dropbox.com/) File syncing to the cloud.
- ⬇ [EyeTV](https://www.geniatech.eu/fr/software/)
- ⬇ [Firefox](https://www.mozilla.org/fr/firefox/new/)
- ⬇ [F.lux](https://justgetflux.com/)
- ⬇ [Google Chrome](https://www.google.com/intl/fr_ALL/chrome/)
- ⬇ [ImageAlpha](https://pngmini.com/)
- ⬇ [ImageOptim](https://imageoptim.com/mac)
- ⬇ iStat Menus
- ⬇ [iTerm2](https://www.iterm2.com/)
- ⬇ [LittleSnitch](https://www.obdev.at/products/littlesnitch/index.html)
- ⬇ [Memory Clean 2](https://fiplab.com/apps/memory-clean-for-mac)
- ⬇ Molotov
- 🍏 [Moom](https://manytricks.com/moom/)
- ⬇ Ngrok
- ⬇ [Omnifocus](https://www.omnigroup.com/omnifocus)
- 🍏 Pixelmator
- ⬇ [PDF Toolkit+](https://itunes.apple.com/us/app/pdf-toolkit-+/id545164971?mt=12) App to cut/split/merge pdfs easily.
- ⬇ [Poedit](https://poedit.net/)
- ⬇ [Postman](https://www.getpostman.com/)
- ⬇ Product Hunt
- 🍏 Reeder
- ⬇ Screaming Frog SEO Spider
- ⬇ [Sequel Pro](https://www.sequelpro.com/)
- ⬇ [Shift](https://tryshift.com/)
- ⬇ [Sip](https://sipapp.io/) - Color picker
- ⬇ Skype
- 🍏 Slack
- ⬇ [Spotify](https://www.spotify.com/fr/download/mac/)
- ⬇ [Station](https://getstation.com/)
- ⬇ Textual 5
- ⬇ [Transmission](http://www.transmissionbt.com/) A fast, easy and free BitTorrent client.
- 🍏 Tweetbot
- 🍏 [Tyme 2](https://www.tyme-app.com) - https://www.producthunt.com/posts/tyme-2
- ⬇ Unison
- ⬇ [Vagrant](https://www.vagrantup.com/downloads.html)
- ⬇ [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- ⬇ VLC
- ⬇ [VSCode](https://code.visualstudio.com/download)


## Configure Applications

- Alfred 3
    - System Preferences > Keyboard > Shortcuts > Spotlight > [ ]

- iTerm2
    - General > [✔] Update to beta test versions when available
    - General > Startup > Open Window Default Arrangement
    - Appearance > [ ] Show per pane title bar
    - Appearance > [✔] Hide scrollbars
    - Appearance > Theme Dark
    - Profile > Text > Cursor > Vertical bar
    - Profile > Text > Cursor > Use thin stroke for anti-aliased text: **Never**
    - Profile > Text > Font > 15pt Operator Mono Book (Anti-aliased)
    - Profile > Terminal > Scroll 10 000

- VSCode

```sh
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

Fix font smoothing in Mojave (see https://github.com/Microsoft/vscode/issues/59887)

```sh
# defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO
defaults write com.microsoft.VSCode CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.EH CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.NP CGFontRenderingFontSmoothingDisabled 0
```
Note: "workbench.fontAliasing" must be set to "default" (not "auto").
