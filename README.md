# Directory Tree  
.
├── .git
├── .zlogin
├── .zlogout
├── .zprofile
├── .zshenv
├── .zshrc
├── README.md
├── mklink.sh
├── load_plugins.zsh
└── origin_func.zsh

# Usage  
``` sh
cd $HOME
git clone git@github.com:OriishiTakahiro/zsh_config.git .zsrc
cd .zshrc
./mklink.sh
ls -la | grep -- "->"  # confirming symbolic links
```

### Symbolic links  
.zlogin -> .zsrc/.zlogin
.zlogout -> .zsrc/.zlogout
.zprofile -> .zsrc/.zprofile
.zshenv -> .zsrc/.zshenv
.zshrc -> .zsrc/.zshrc
