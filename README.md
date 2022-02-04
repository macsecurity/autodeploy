
```
git submodule init
git submodule sync

echo 'export PATH=\"$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH\"' >> ~/.zshrc
source ~/.zshrc

pip3 install virtualenv
virtualenv env
. env/bin/activate
cd code
./setup/osx

```


Other

```
Open new terminal

Git clone https://github.com/macsecurity/mac-dev-playbook.git

Install the developer tools

While installing, register to hexnode via safari at https://bit.ly/cwg-enroll-mdm

When developeer tools finished, run git clone again

Git clone https://github.com/macsecurity/mac-dev-playbook.git


export PATH="$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:$PATH"

sudo pip3 install --upgrade pip

Cd mac-dev-playbook
pip3 install ansible

ansible-galaxy install -r requirements.yml

ansible-playbook main.yml --ask-become-pass
```

```
brew install chezmoi
brew install mas
mas list

brew bundle

brew bundle dump

https://github.com/monfresh/dotfiles/blob/main/Brewfile.local.tmpl

brew bundle --file=- <<EOF
    brew 'chezmoi'
EOF
if [ ! -f "$HOME/.config/chezmoi/chezmoi.toml" ]; then
  chezmoi init --apply --verbose https://github.com/monfresh/dotfiles.git
  chmod 0600 "$HOME/.config/chezmoi/chezmoi.toml"
fi


if [ -f "$HOME/Brewfile.local" ]; then
  fancy_echo "Installing tools and apps from Brewfile.local ..."
  if brew bundle --file="$HOME/Brewfile.local"; then
    fancy_echo "All items in Brewfile.local were installed successfully."
  else
    fancy_echo "Some items in Brewfile.local were not installed successfully."
  fi
fi

chezmoi update
```

https://github.com/monfresh/dotfiles/blob/main/README.md

https://www.lotharschulz.info/2021/05/11/macos-setup-automation-with-homebrew/

https://danielsaidi.com/blog/2018/08/26/automate-setting-up-mac-os

https://www.alchemists.io/projects/mac_os-config/

https://medium.com/macoclock/automating-your-macos-setup-with-homebrew-and-cask-e2a103b51af1

https://wilsonmar.github.io/ansible-mac-osx-setup/

https://www.jeffgeerling.com/blog/2021/dont-fall-love-your-mac%E2%80%94automate-it

https://codeberg.org/lotharschulz/gists/src/branch/main/osx_bootstrap.sh




git@github.com:macsecurity/laptop.git

git@github.com:macsecurity/dotfiles.git

git@github.com:macsecurity/mac_os-config.git

git@github.com:macsecurity/mac_os.git

git@github.com:macsecurity/mac-dev-playbook.git


```
ssh-keygen -t ed25519-sk -C "projectpomsky@google.com"


ssh-keygen -vvvv -t ecdsa-sk

 lsusb -v 2>/dev/null | grep -A2 Yubico | grep "bcdDevice" | awk '{print $2}'

brew install libfido2
brew install openssh

ykman info
```

https://support.yubico.com/hc/en-us/articles/360016649059-Using-Your-YubiKey-as-a-Smart-Card-in-macOS
https://developers.yubico.com/PIV/Guides/Smart_card-only_authentication_on_macOS.html
https://support.apple.com/en-us/HT208372
