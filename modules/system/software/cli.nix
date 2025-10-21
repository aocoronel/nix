{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # age
    # atomicparsley
    bash-completion
    bat
    # bc
    # borgbackup
    # bpytop
    brightnessctl
    btop
    # cava
    # cmatrix
    cmus
    cryptsetup
    curl
    direnv
    # expect
    eza
    fastfetch
    fd
    ffmpeg
    # figlet
    fzf
    gh
    git
    # git-crypt
    git-filter-repo
    github-cli
    gitleaks
    gnupg
    gnutar
    # gocryptfs
    gvfs
    # home-manager
    imagemagick
    jmtpfs
    jq
    just
    killall
    lazygit
    less
    # libargon2
    lsof
    man
    moreutils
    mtpfs
# mupdf
# mupdf-tools
    navi
    # ncdu
    # nmap
    oath-toolkit
    # odt2txt
    # oh-my-posh
    onefetch
    openssl
    # pandoc-cli
    # parallel
    pinentry-curses
    pulseaudio
    # pwgen
    ranger
    rclone
    restic
    ripgrep
    # rmlint
    rsync
    # sd
    sqlite
    # srm
    stow
    # tig
    # tldr
    tmux
    tmuxp
    # tree
    udiskie
    ueberzugpp
    ufw
    unzip
    wget
    which
    yazi
    yt-dlp
    zip
    zoxide
  ];
}
