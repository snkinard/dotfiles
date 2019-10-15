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

While you're at it. Go ahead and set up an [ssh key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for this machine in your github account

Run it.

```
% cd dotfiles
% ./install.sh
```

## iterm2

Install the included font so that powerline renders correctly in iterm and enable solarized:

1. Open `iterm`
2. "Install" the font provided in the `dotfiles` repo:
  ```
  % cp dotfiles/fonts/Roboto\ Mono\ Light\ for\ Powerline.ttf /Library/Fonts/
  ```
3. Open preferences (`cmd+,`)
4. Select the `Profiles` tab
5. Select the `Text` tab under `Profiles` 
6. Change the `Font` dropdown to `Roboto Mono Light for Powerline`
7. Select the `Colors` tab under `Profiles`
8. Change the `Color Presets...` dropdown to `Solarized Dark`

# Credit where Credit is due

Built on the shoulders of the work of others. I spent a long time looking at the repos to get ideas and see how to make things work:

* https://github.com/Valloric/dotfiles
* https://github.com/davidvuong/dotfiles
* https://github.com/holman/dotfiles
* https://github.com/mathiasbynens/dotfiles
* https://github.com/skwp/dotfiles
* https://github.com/cowboy/dotfiles
