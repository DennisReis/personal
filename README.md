# personal
This is my personal repository with my tech stuff.

## How to apply local setup

## Local setup


```bash
# Install ZSH, TMUX and Vim
sudo apt install zsh tmux vim

# Install Oh My ZSH!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install PowerLevel 10K - Customization for ZSH
# it's recommended install Hack Nerd font and enable it in your terminal
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# copy .zshrc
curl -fsSL https://raw.githubusercontent.com/DennisReis/personal/master/.zshrc -o $HOME/.zshrc
# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# Apply all the changes
source .zshrc
# If Powelevel10 setup prompt didn't show up run
p10k ocnfigure
# Configuring vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
mkdir -p ~/.vim/pack/dist/start
git clone https://github.com/ConradIrwin/vim-bracketed-paste ~/.vim/pack/dist/start/vim-bracketed-paste
curl -fsSL https://raw.githubusercontent.com/DennisReis/personal/master/.vimrc -o $HOME/.vimrc
# Configuring TMUX
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
curl -fsSL https://raw.githubusercontent.com/DennisReis/personal/master/.tmux.conf.local -o $HOME/.tmux.conf.local
```

