#!/bin/bash

# Create virtual environment
mkdir -p /tmp/build/hypershell
cd /tmp/build/hypershell
/opt/homebrew/bin/python3.13 -m venv ./libexec
source libexec/bin/activate

# Copy/paste new resource list into formula
# Be sure to update version info in formula (including hash for source download)!
pip install 'hypershell[postgres]' homebrew-pypi-poet
poet --resource 'hypershell[postgres]' | pbcopy
brew edit hypershell

# Rebuild bottle and copy bottle hash into formula
brew uninstall hypershell
brew install --build-bottle hypershell
brew bottle hypershell
brew edit hypershell

# Copy over new formula to repo and commit changes
cd -
cp /opt/Homebrew/Library/Taps/glentner/homebrew-tap/Formula/hypershell.rb Formula/hypershell.rb

# Copy bottle to release assets (and remove extra hyphen)!
# ...
