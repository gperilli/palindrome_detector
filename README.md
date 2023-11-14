# palindrome_detector

This is a a simple ruby coding exercise with accompanying rspec tests.

## Running the program

Run the ruby method directly from the terminal like this:
```
ruby palindrome_detector.rb oxo
```

Run the rspec tests like this:
```
rspec spec/palindrome_detector_spec.rb
```


### Setting up a Ruby development environment: General Outline

This is a ruby on rails web app, so first set up a ruby development environment on your local machine. If you are using Windows, this may involve setting up [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), Windows subsystem for Linux, [rbenv](https://github.com/rbenv/rbenv), a ruby environment manager, and Ruby. 

### More Details on Setting Up A Ruby + Git + Github Cli on a Linux Machine

#### git: version manager
Install git:
```
sudo apt update
sudo apt install -y git
```


#### Github CLI: command line interface for Github
Install github CLI:

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
```

Then:
```
sudo apt install -y gh
```

Check the version:
```
gh --version
```

Configure Github CLI

```
gh auth login -s 'user:email' -w
```
Follow the instructions to connect the local Guthub CLI with your Github account.

Confirm Guthub CLI connection with:
```
gh auth status
```
This should display: `Logged in to github.com as <YOUR USERNAME>`

Configure GIthub CLI with SSH:
```
gh config set git_protocol ssh
```

#### Confugure SSH connection with Github

Generate SSH codes:
```
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

Give the SSH public key to your Guthub account:
```
gh auth refresh -s write:public_key
```
Run this to set the SSH key locally:
```
gh ssh-key add ~/.ssh/id_ed25519.pub
```

#### zsh: custom shell
Install imagemagick:
```
sudo apt install -y zsh curl vim imagemagick jq
```

install zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### rbenv: ruby version manager
Check if rbenv is installed:
```
rvm implode && sudo rm -rf ~/.rvm
```
The response should be `zsh: command not found: rvm` if it is absent.

Use this to remove previous installation:
```
rm -rf ~/.rbenv
```
install rbenv using git clone:
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

configure the shell to load rbenv for Zsh:
```
echo 'eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc
```
rbenv repository details: https://github.com/rbenv/rbenv#basic-git-checkout


#### Ruby
Install Ruby version 2.7.4 *(or the version you prefer):
```
rbenv install 2.7.4
```

Set Ruby 2.7.4 as the gloabl default Ruby version:

```
rbenv global 2.7.4
```

Restart the terminal, and check the installed Ruby version with:
```
ruby -v
```
