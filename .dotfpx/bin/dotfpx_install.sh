#!/bin/bash

Configure() {
  echo "Select your package manager:"
  select answer in "pacman" "apt-get"; do
    case $answer in
      "pacman" ) MANAGER="sudo pacman -S --needed --noconfirm"; break;;
      "apt-get" ) MANAGER="sudo apt-get install"; break;;
    esac
  done

  echo "packagemanager:$MANAGER" > $HOME/.dotfpx/config
}

if [ ! -f $HOME/.dotfpx/config ]; then 
  Configure;
else
  echo "A configuration file was found. You can reuse this if you want, or reconfigure.";
  echo "You should reconfigure if you are experiencing issues during the installation.";
  select answer in "Use old configuration" "Reconfigure"; do
    case $answer in
      "Use old configuration" ) break;;
      "Reconfigure" ) Configure; break;;
    esac;
  done;
fi

while read LINE; do
  [[ "$LINE" =~ ^packagemanager:.*$ ]] && MANAGER=${LINE##*"packagemanager:"};
done < $HOME/.dotfpx/config

# add packages to install here
echo -e "\nInstalling packages..."
$MANAGER fastfetch nano htop openssh bat grep gdb gcc curl clang zip unzip

# customize neofetch
echo -e "\nCustomizing fastfetch..."
curl -Ls 'https://goodgirl.dev/_images/fastfetch_logo.png' \
  -o $HOME/.dotfpx/fetch_logo.png

# install nerd-font (cascadia-code)
echo -e "\nInstalling fonts..."
mkdir $HOME/.dotfpx/fonts
curl -Ls 'https://internal.goodgirl.dev/api/share/files/cc_nerdfont?m=d' \
  -o $HOME/.dotfpx/fonts/CascadiaCodeNF.ttf
mkdir -p $HOME/.local/share/fonts/dotfpx
ln -s -t $HOME/.local/share/fonts/dotfpx/ $(dirname "$0")/fonts/*.ttf 2>/dev/null

if ! grep -q "source \$HOME/.dotfpx/bash.src" $HOME/.bashrc; then
  echo "source \$HOME/.dotfpx/bash.src" >> $HOME/.bashrc;
fi

source $HOME/.bashrc
