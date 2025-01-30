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

# install fonts
echo -e "\nInstalling fonts..."
mkdir -p $HOME/.local/share/fonts/dotfpx
curl -Ls 'https://internal.goodgirl.dev/api/share/files/dotfpx_fonts?m=d' \
  -o $HOME/.local/share/fonts/dotfpx/dotfpx_fonts.zip
cd $HOME/.local/share/fonts/dotfpx
unzip dotfpx_fonts.zip
cd -

if ! grep -q "source \$HOME/.dotfpx/bash.src" $HOME/.bashrc; then
  echo "source \$HOME/.dotfpx/bash.src" >> $HOME/.bashrc;
fi

source $HOME/.bashrc
