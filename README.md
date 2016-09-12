# Konstantin Mikhailov's Dotfiles

This is a set of dotfiles and scripts I use to customize my Linux environments.

## Management

I use [GNU Stow](https://www.gnu.org/software/stow/) to symlink files into 
`$HOME`.

```
cd ~/.dotfiles
stow git
```

## Local settings

### `~/.gitconfig.local`

If `~/.gitconfig.local` exists, it will be included. The file is included in 
at the end of `.gitconfig`, thus, allowing you to add or override options in
`.gitconfig`.

### `~/.vimrc.local`

If the `~/.vimrc.local` exists it will be sourced after `~/.vimrc` which allows
to overwrite settings from `~/.vimrc`.
