# Directory Tree  

.  
├── README.md  
├── alias.sh  
├── func.sh  
├── helmcomp.sh  
├── kubecomp.sh  
├── load_plugins.sh  
├── mklinks.sh  
├── zsh-async  
├── zsh-async-git-prompt  
├── zsh-autosuggestions  
└── zsh-syntax-highlighting  

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
