# update package manager
sudo apt update && sudo apt upgrade -y

# brew auto install
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt install -y build-essential

# install tools
brew install terraform
brew install kind
brew install helm
brew install k9s