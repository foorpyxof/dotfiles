# Erynn's .dotfiles!

## Covers the following applications:
- Sway
- Waybar
- Wofi
- Vim
- Neovim (+ LazyVim)
- Kitty
- Fastfetch

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
