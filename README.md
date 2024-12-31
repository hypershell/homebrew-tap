Homebrew Tap
============

This is a [Homebrew][homebrew] [tap][tap] for [HyperShell][hypershell].

[homebrew]: https://brew.sh/
[tap]: https://docs.brew.sh/Taps.html
[hypershell]: https://github.com/glentner/hypershell

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
$ python3.13 -m venv ./libexec
$ source libexec/bin/activate
```

Install the latest hypershell (just published) into the environment
along with `psycopg2` and `homebrew-pypi-poet`.

```
$ pip install hypershell psycopg2 homebrew-pypi-poet
```

Use `poet` to generate the resource definitions and load it to the
clipboard. We do it individually because hypershell is not on PyPI.

```
$ pip list | tail -n+3 | grep -v hypershell | awk '{print $1}' | while read name; do poet --single $name; done | pbcopy
```

Edit the formula (partially).

1. Replace resource list (delete hypershell resource).
2. Modify any reference to the previous version number.
3. Update the link and sha256 for the .tar.gz from GitHub.

```
$ brew edit hypershell
```

Update the installation.

```
$ brew uninstall hypershell
$ brew install --build-bottle hypershell
```

Now generate the bottle. The output includes a snippet to update
the formula file with. The created file needs to be uploaded to
the corresponding release page on GitHub.

```
$ brew bottle hypershell                
```
