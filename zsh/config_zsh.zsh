#!/usr/bin/env zsh

# install zsh plugins
echo "Installing zsh plugins..."
# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# copy .zshrc
echo "Copying .zshrc..."
cp ./config/.zshrc $HOME/.zshrc

# copy .p10k.zsh
echo "Copying .p10k.zsh..."
cp ./config/.p10k.zsh $HOME/.p10k.zsh

exec $SHELL -l $(zsh echo "🎉 Done setting up zsh! \nPlease logout and login to apply the changes.")
