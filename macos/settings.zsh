# ~/.macos — https://mths.be/macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change.
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished.
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

###############################################################################
# MARK: General UI/UX
###############################################################################

# Disable the sound effects on boot.
sudo nvram SystemAudioVolume=" "

# Set highlight and accent colors to yellow.
defaults write NSGlobalDomain AppleHighlightColor -string "0.458823 0.341176 0.023529"

# Set sidebar icon size to medium.
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Expand save panel by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default.
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete.
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

###############################################################################
# MARK: Keyboard, Mouse, Trackpad, Bluetooth Accessories, Input
###############################################################################

# Enable “natural” scrolling.
defaults write -g com.apple.swipescrolldirection -bool true

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs).
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Use scroll gesture with the Ctrl (^) modifier key to zoom.
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# Follow the keyboard focus while zooming in.
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Set a fast keyboard repeat rate.
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 30

# Set language and text formats.
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the Caps lock key to an Escape key.
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}'

###############################################################################
# MARK: Energy Saving
###############################################################################

# Sleep the display after 15 minutes.
sudo pmset -a displaysleep 15

###############################################################################
# MARK: Screen
###############################################################################

# Require password immediately after sleep or screen saver begins.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the Downloads folder.
defaults write com.apple.screencapture location -string "${HOME}/Downloads"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF).
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots.
defaults write com.apple.screencapture disable-shadow -bool true

# Lock when the lid is closed.
sudo defaults write com.apple.loginwindow TightlyLinkAllSystemSleep -bool true

###############################################################################
# MARK: Finder
###############################################################################

# Set the Home folder as the default location for new Finder windows.
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Show all filename extensions.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar.
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar.
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Keep folders on top when sorting by name.
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Enable spring loading for directories.
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Reduce the spring loading delay for directories.
defaults write NSGlobalDomain com.apple.springing.delay -float 0.1

# Avoid creating .DS_Store files on network or USB volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Use column view in all Finder windows by default.
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

###############################################################################
# MARK: Dock, Dashboard, Hot Corners
###############################################################################

# Set the icon size of Dock items.
defaults write com.apple.dock tilesize -int 60

# Change minimize/maximize window effect.
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon.
defaults write com.apple.dock minimize-to-application -bool true

# Show indicator lights for open applications in the Dock.
defaults write com.apple.dock show-process-indicators -bool true

# Speed up Mission Control animations.
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don't automatically hide and show the Dock.
defaults write com.apple.dock autohide -bool false

# Make Dock icons of hidden applications translucent.
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock.
defaults write com.apple.dock show-recents -bool false

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# Top left screen corner
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner: Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0

###############################################################################
# MARK: Time Machine
###############################################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume.
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

###############################################################################
# MARK: App Store
###############################################################################

# Enable the automatic update check.
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in background.
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates.
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update.
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates.
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true

###############################################################################
# MARK: Photos
###############################################################################

# Prevent Photos from opening automatically when devices are plugged in.
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

###############################################################################
# MARK: Google Chrome
###############################################################################

# Use the system-native print preview dialog.
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

# Expand the print dialog by default.
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

###############################################################################
# MARK: Kill Affected Apps
###############################################################################

for app in "Dock" \
    "Finder" \
    "Google Chrome" \
    "Photos" \
    "SystemUIServer"; do
    killall "${app}" &>/dev/null
done
echo "All done! Note that some of these changes require a logout/restart to take effect."
