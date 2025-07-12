# Erynn's .dotfiles!

## Covers the following applications:
- SwayFX (Some options will **NOT** be compatible with base Sway)
- Waybar
- Wofi
- Vim
- Neovim (+ LazyVim)
- Kitty
- Fastfetch

## Additional dependencies
- [ammgws/autotiling-rs](https://github.com/ammgws/autotiling-rs) for alternating the tile splitting direction for Sway
- [ATTron/swaddle](https://github.com/ATTron/swaddle) for allowing swayidle to listen to DBus inhibition messages

Some can be included from your main config file in `~/.config`, like Kitty.

`~/.config/kitty/kitty.conf`:
```conf
include [path_to_kitty.conf_in_this_repository]
```

Others have to be linked:
```bash
cd ~/.config/waybar/
ln -s [path_to_waybar/config.jsonc_in_this_repository]
ln -s [path_to_waybar/style.css_in_this_repository]
```

## Bash things
put `source [path_to_source.bash]` into your `~/.bashrc` file

### Custom prompt
Also comes with a pink/purple-ish bash prompt that contains a shortened absolute path
![custom prompt image](https://raw.githubusercontent.com/foorpyxof/dotfiles/refs/heads/master/assets/prompt.png)

### Aliases
Sets aliases for several applications to use certain flags quickly (e.g. `la` for `ls -lA`)

# Previews
## Desktop
![screenshot of desktop](https://raw.githubusercontent.com/foorpyxof/dotfiles/refs/heads/master/assets/preview.png)
![screenshot of desktop, but with open windows](https://raw.githubusercontent.com/foorpyxof/dotfiles/refs/heads/master/assets/preview_with_windows_open.png)
