sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential exa vim git
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -fLo ~/.vimrc https://raw.githubusercontent.com/alex-w-k/quick-start/master/.vimrc
curl https://raw.githubusercontent.com/alex-w-k/quick-start/master/.bashrc >> ~/.bashrc
mkdir -p ~/.vim/undo
source ~/.bashrc
sudo raspi-config nonint do_i2c 0
sudo sh -c 'echo "dtoverlay=i2c-mux,pca9548,addr=0x70" >> /boot/config.txt'
curl -L https://kizniche.github.io/Mycodo/install | bash
sudo reboot
