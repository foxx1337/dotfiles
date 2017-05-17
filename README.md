# Useful dotfiles for general linux operation

## Usage

Checkout the project in the home directory and add the following to `.bashrc`:
```bash
if [ -d $HOME/dotfiles ]; then
    for i in $HOME/dotfiles/*.sh; do
        if [ -r $i ]; then
            . $i
        fi
    done
    unset i
fi
```
