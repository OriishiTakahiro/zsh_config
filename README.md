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
git clone git@github.com:OriishiTakahiro/zsh_config.git $HOME/.zsrc
cd $HOME/.zshrc
git submodule init
git submodule update
./mklink.sh
# confirming symbolic links
ls -la | grep -- "->"
# make completion script
kubectl completion zsh > kubecomp.sh 
helm completion zsh > helmcomp.sh
```

### Symbolic links  
```sh
.zlogin -> .zsrc/.zlogin
.zlogout -> .zsrc/.zlogout
.zprofile -> .zsrc/.zprofile
.zshenv -> .zsrc/.zshenv
.zshrc -> .zsrc/.zshrc
```
