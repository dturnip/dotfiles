### Fix nord colours

```sh
cd ~/.local/share/nvim/plugged/nord-vim/colors \
vi nord.vim
```

Then, `:251` and delete the line (this might change, so search for `"call s:hi("WarningMsg",` if you're unsure. This change allows warning message buffers to be displayed nordish-yellow, and bufferline's modified colour to be visible (this isn't needed if you use a different colourscheme or terminal emulator background than mine)

### Install codicons font (for kitty & nvim-cmp & lspkind-nvim)

https://github.com/microsoft/vscode-codicons/blob/main/dist/codicon.ttf

Download from above link, then open the file with Font Book to install
