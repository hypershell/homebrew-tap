#!/bin/bash

mkdir -p /tmp/build/hypershell
cd /tmp/build/hypershell
/opt/homebrew/bin/python3.13 -m venv ./libexec
source libexec/bin/activate

pip https://github.com/hypershell/hypershell/archive/refs/tags/2.6.2.tar.gz
pip install psycopg2 homebrew-pypi-poet
pip list | tail -n+3 | grep -v hypershell | awk '{print $1}' | while read name; do poet --single $name; done | pbcopy
brew edit hypershell

brew uninstall hypershell
brew install --build-bottle hypershell
brew bottle hypershell

cd -
cp /opt/Homebrew/Library/Taps/glentner/homebrew-tap/Formula/hypershell.rb Formula/hypershell.rb
