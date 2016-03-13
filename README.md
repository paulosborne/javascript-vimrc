# Lightweight JavaScript Vimrc
This is an intentionally minimal vimrc, it's currently being used in an hostile windows environment - the modules have been carefully chosen due to their minimal performance impact.

```
git clone --recursive https://github.com/paulosborne/lightweight-javascript-vimrc.git ~/.vim
```
Example .vimrc
```
let g:settings = {}
let g:settings.default_indent = 2
let g:settings.javascript_libs = 'angular,underscore'
let g:settings.colorscheme = 'molokai'
let g:settings.encoding = 'utf-8'
let g:settings.max_column = 120

source ~/.vim/vimrc
```
