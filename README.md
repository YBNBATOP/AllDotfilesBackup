# This is a repo maintained with **stow** utility

# Tutorial

Have the repo in your home directory like:

```
~/DotfilesBackup
```

Then to make usage of the dotfiles you can just do:

```
stow alacritty
```

After this, the utility will automatically convert the files into the ~/.config directory

To store a configuration from ~/.config though, do this:

```
cd ~/DotfilesBackup
mkdir nvim
mkdir nvim/.config
mv ~/.config/nvim nvim/.config
```

This way, you create the same structure as your home configuration folder, but make sure to have the right paths. Creating the nvim/.config might be unnecessary but it is a safe way for sure
