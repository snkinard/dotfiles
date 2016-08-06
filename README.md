Here be my *nix system configs. 

#

TODO: Install for Mac OS

# Install

Disclaimer: The following script does not backup any of your current system configurations. There is no "uninstall" feature. It is recommended that you backup your current dotfiles or home directory before running.

```
bash -c "`curl -fsSL https://raw.githubusercontent.com/snkinard/dotfiles/master/install.sh `"
```

See below if you don't already have curl installed.

## cURL

Mac OS comes with [cURL](https://en.wikipedia.org/wiki/CURL) and some linux distros do as well. If you're on some bare-ass linux box you may need to manually install curl. If you don't have curl installed you might see something like this

```
$ curl --version
The program 'curl' is currently not installed.  You can install it by typing:
sudo apt-get install curl
```
