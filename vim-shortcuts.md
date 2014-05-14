Vim (spf13) Commands

[SPF13-VIM](https://github.com/spf13/spf13-vim)

[alexparker/dotfiles - .vimrc.local](https://github.com/alexparker/dotfiles/blob/master/config/vimrc.local)
[alexparker/dotfiles - .vimrc.bundles.local](https://github.com/alexparker/dotfiles/blob/master/config/vimrc.bundles.local)
[alexparker/dotfiles - .vimrc.before.local](https://github.com/alexparker/dotfiles/blob/master/config/vimrc.before.local)


`<leader>,u` - Show undo tree

__z,z__ - move screen to have cursor centered
__z,t__ - move screen to have cursor at top
__z,b__ - move screen to have cursor at bottom

`^+d` - Scroll screen down with cursor
`^+u` - Scroll screen up with cursor

## Ag Vim plugin

`v` - open file in vertical split


# Tabs / Windows / Buffers

Buffers are an instance of an editor tied to a path or point in memory.

Tabs and Windows are organizational ways to view buffers. All buffers are within your instance of vim.
Editing the same buffer in two windows (split panel) will show changes in both because it is the same buffer.
Editing the same buffer in two tabs, will show changes in both, because it is the same buffer

## Tabs

## Splits (Windows)

`^+W,q` - close current split view`

## Buffers

`:b#` - Go to # Buffer
`:bn` - Go to next buffer
`:bp` - Go to previous buffer
`:bd` - Delete current buffer (close file)
`:bw` - Buffer wipe

`:vert sb N` - View buffer #N in a vertical split

