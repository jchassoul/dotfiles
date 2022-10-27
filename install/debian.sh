#!/bin/bash

echo export LC_ALL="en_US.UTF-8"
echo export LANG="en_US.UTF-8"
echo export LANGUAGE="en_US.UTF-8"

echo "deb http://ftp.debian.org/debian bullseye-backports main" |
tee /etc/apt/sources.list.d/backports.list

apt update

apt -y install --install-recommends git apt-transport-https\
    gnupg2 software-properties-common curl less

apt-add-repository contrib

apt-add-repository non-free

apt install --install-recommends \
    debootstrap\
    connman-gtk\
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
    papirus-icon-theme\
    squashfs-tools\
    cryptsetup\
    libsctp1\
    tcpdump\
    sngrep\
    xkbset\
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
    picom\
    htop\
    urlview\
    mupdf\
    e2fsprogs\
    xfsprogs\
    feh\
    cmus\
    pavucontrol\
    mpv\
    jfsutils\
    ntfs-3g\
    fuse3\
    gvfs\
    gvfs-fuse\
    libnss-mdns\
    gvfs-bin\
    gvfs-backends\
    dconf-service\
    dconf-cli\
    dconf-editor\
    xdg-utils\
    lxrandr\
    build-essential\
    silversearcher-ag\
    gnome-calculator\
    gpicview\
    xarchiver\
    audacity\
    fonts-lyx\
    python3-apt\
    python3-dev\
    python3-pip\
    lxappearance\
    python3-venv\
    linux-image-amd64\
    live-boot\
    vim-athena\
    tmux\
    bspwm\
    lightdm\
    pcmanfm\
    unclutter\
    transmission\
    jq\
    screenkey\
    uuid-dev\
    uuid\
    odbcinst\
    unixodbc\
    unixodbc-dev\
    doas\
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
    exuberant-ctags\
    libgdk-pixbuf2.0-dev\
    libgsasl7\
    libkyotocabinet16v5\
    libntlm0\
    libpangoxft-1.0-0\
    librsvg2-bin\
    libxml2-utils\
    mailutils\
    mailutils-common\
    optipng\
    keychain\
    parallel\
    python3-pil\
    sassc\
    firefox-esr\
    pamix\
    suckless-tools\
    sysstat\
    exa\
    bat\
    zenity\
    ibus-hangul\
    fonts-nanum\
    xinput\
    dunst\
 -y

apt install linux-headers-$(uname -r) -y

apt -t bullseye-backports install polybar -y

apt clean

apt autoremove -y

apt remove yelp -y
