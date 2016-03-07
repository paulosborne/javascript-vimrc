# Lightweight JavaScript Vimrc
This is an intentionally minimal vimrc, it's currently being used in an hostile windows environment - the modules have been carefully chosen due to their minimal performance impact.

```
git clone --recursive https://github.com/posbo/vimrc.git ~/.vim
```
Example .vimrc
```
let g:default_indent = 2
let g:javascript_libs = 'angular,underscore'
let g:colorscheme = 'molokai'
let g:encoding = 'utf-8'
let g:max_column = 120

source ~/.vim/.vimrc
```
