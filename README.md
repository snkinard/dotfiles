MacOS system configs provisioner. Maybe it'll work for linux as well one day.

Disclaimer: The following script does not backup any of your current system configurations. There is no "uninstall" feature. It is recommended that you backup your current dotfiles or home directory before running.


# Install 

Maybe one day these steps can be automated as well. Starting with a completely fresh install of MacOS Catalina (I'm writing this using 10.15 YMMV)...

*Gotta get Git*. Install xcode command line tools. One way to do this is open the `Terminal` app and type `git` and press `Enter`. Follow the prompts.

Git (get?) this repo on your local machine. I like to put it in my home directory. In the `Terminal` app:

```
% cd ~
% git clone https://github.com/snkinard/dotfiles.git
```

Run it.

```
% cd dotfiles
% ./install.sh
```

Make sure to install the included font in the "fonts" directory. In iterm set the color theme to solarized dark and the font to the included font

# Credit where Credit is due

Built on the shoulders of the work of others. I spent a long time looking at the repos to get ideas and see how to make things work:

* https://github.com/Valloric/dotfiles
* https://github.com/davidvuong/dotfiles
* https://github.com/holman/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/skwp/dotfiles
* https://github.com/cowboy/dotfiles
