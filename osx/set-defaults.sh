# Sets OS X defaults.
# -----------------------------------------------------------------------------

# Mojave: adjust font smoothing too thin
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO

# Safari: set up for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Safari: hide bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
