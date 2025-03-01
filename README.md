Homebrew Tap
============

This is a [Homebrew][homebrew] [tap][tap] for [HyperShell][hypershell].

[homebrew]: https://brew.sh/
[tap]: https://docs.brew.sh/Taps.html
[hypershell]: https://github.com/hypershell/hypershell


Deployment Notes
----------------

Create a temporary working directory.

```
$ mkdir -p /tmp/build/hypershell
$ cd /tmp/build/hypershell
```

Create a local virtual environment using the correct Python interpreter
from HomeBrew.

```
$ /opt/homebrew/bin/python3.13 -m venv ./libexec
$ source libexec/bin/activate
```

Install the latest hypershell (just published) into the environment
with the postgres extra and record all dependencies.
Use `poet` to generate the resource definitions and copy to clipboard.

```
pip install 'hypershell[postgres]' homebrew-pypi-poet
poet --resources 'hypershell[postgres]' | pbcopy
```

Edit the formula (partially).

1. Replace resource list (delete hypershell resource and anything unnecessary).
2. Modify any reference to the previous version number.
3. Update the link and sha256 for the .tar.gz from GitHub.

```
$ brew edit hypershell
$ brew uninstall hypershell
$ brew install --build-bottle hypershell
$ brew bottle hypershell
```

The output includes a snippet to update the formula file with.
The created file needs to be uploaded to the corresponding release page on GitHub.
Edit the formula one more time.

```
$ brew edit hypershell
```

Update the installation and copy back to this repository.
Commit and push the update to make live for everyone else.

```
$ cp /opt/homebrew/Library/Taps/hypershell/homebrew-tap/Formula/hypershell.rb Formula/hypershell.rb
$ git add --all && git commit -S -m "Update version X"
$ git push origin main
```

