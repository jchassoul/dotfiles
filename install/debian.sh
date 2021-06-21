#!/bin/bash

echo export LC_ALL="en_US.UTF-8"
echo export LANG="en_US.UTF-8"
echo export LANGUAGE="en_US.UTF-8"

echo "deb http://ftp.debian.org/debian buster-backports main" |
tee /etc/apt/sources.list.d/backports.list

apt update

#
# clean the ones that are trash or unecessary
#

apt -y install --install-recommends vim git apt-transport-https\
    gnupg2 software-properties-common curl less

apt-add-repository contrib

apt-add-repository non-free

apt install --install-recommends \
    debootstrap\
    libyaml-0-2\
    libyaml-dev\
    libsdl2-ttf-dev\
    libssl-dev\
    zlib1g-dev\
    libncurses5-dev\
    libgdbm-dev\
    libnss3-dev\
    libssl-dev\
    libreadline-dev\
    libffi-dev\
    uuid-dev\
    libgpgme-dev\
    libseccomp-dev\
    pkg-config\
    squashfs-tools\
    cryptsetup\
    libsctp1\
    tcpdump\
    sngrep\
    libnotify-bin\
    g++\
    wget\
    mksh\
    kitty\
    openssh-client\
    openssh-server\
    xserver-xorg-core\
    xserver-xorg\
    xinit\
    pciutils\
    usbutils\
    ntfs-3g\
    hfsprogs\
    dosfstools\
    pv\
    network-manager-gnome\
    network-manager-openvpn-gnome\
    network-manager-pptp-gnome\
    network-manager-vpnc-gnome\
    compton\
    htop\
    urlview\
    mupdf\
    e2fsprogs\
    xfsprogs\
    feh\
    cmus\
    pavucontrol\
    vlc\
    jfsutils\
    ntfs-3g\
    fuse\
    gvfs\
    gvfs-fuse\
    fusesmb\
    libnss-mdns\
    gvfs-bin\
    gvfs-backends\
    dconf-service\
    dconf-cli\
    dconf-editor\
    xdg-utils\
    lxrandr\
    build-essential\
    gnome-calculator\
    gpicview\
    xarchiver\
    audacity\
    fonts-lyx\
    python3-apt\
    python3-dev\
    python3-pip\
    lxappearance\
    python-wxgtk3.0\
    python3-venv\
    linux-image-amd64\
    live-boot\
    systemd-sysv\
    vim-athena\
    tmux\
    runit\
    bspwm\
    lightdm\
    pcmanfm\
    transmission\
    jq\
    screenkey\
    uuid-dev\
    uuid\
    odbcinst\
    unixodbc\
    unixodbc-dev\
    sudo\
    make\
    cmake\
    libncurses5-dev\
    protobuf-compiler\
    libsdl2-dev\
    libsdl2-image-dev\
    libasound2-dev\
    libpulse-dev\
    automake\
    gfortran\
    bc\
    gir1.2-atk-1.0\
    gir1.2-freedesktop\
    gir1.2-gdkpixbuf-2.0\
    gir1.2-gtk-3.0\
    gir1.2-pango-1.0\
    gtk2-engines-murrine\
    exuberant-ctags\
    guile-2.0-libs\
    libgdk-pixbuf2.0-dev\
    libgsasl7\
    libkyotocabinet16v5\
    libmailutils5\
    libntlm0\
    libpangoxft-1.0-0\
    librsvg2-bin\
    libxml2-utils\
    mailutils\
    mailutils-common\
    murrine-themes\
    optipng\
    parallel\
    python3-pil\
    sassc\
    firefox-esr\
    suckless-tools\
    sysstat\
 -y

apt install linux-headers-$(uname -r) -y

apt -t buster-backports install polybar -y

apt clean

apt remove yelp -y

apt autoremove -y

chsh --shell /bin/mksh
