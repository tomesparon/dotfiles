# dotfiles
Sick of having disparate setups between machines

# Setup
(assuming git, [scoop](https://github.com/ScoopInstaller/Scoop), and winget are installed):

## Powershell
```
cd $HOME
git clone --bare git@github.com:tomesparon/dotfiles.git $HOME/.dotfiles.git/
git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout --force
. $PROFILE

```
# Package lists:
- [scoop.json](.files/scoop.json)
- [winget.json](.files/winget.json)

Import with:
```
# created with scoop export, winget export
scoop install $HOME/.files/scoop.json
winget import -i $HOME/.files/winget.json --accept-package-agreements --accept-source-agreements
```
