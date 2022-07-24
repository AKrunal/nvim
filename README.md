# nvim

Mapping:
core
* `<space>` -- leader key
* `<leader>t` TrimWhitespace function call and remove space after line and also after words
* `<A-j>` && `<A-down>` 1 line below of selected line or current line
* `<A-k>` && `<A-up>` 1 line up of selected line or current line
* `<F1>` open telescope help
* `<F2>` rename variable(function) with coc
* `<leader>%` 

Telescope `kishan/telescope.lua`
* `ctrl+p` open telescope window which has all files
* `<leader>i` open telescope window which has git files only with ivy formet
* `<leader>lg` live grep but you need to install ripgrep with  `sudo apt install ripgrep`

git/git worktree `kishan/git.lua`
* `<leader>g` same as `:G` open up git status
* `<leader>gc` it commit the git file
* `<leader>gp` git push
* `<leader>gw` it shows worktree list of the cureent work tree
* `<leader>cgw` create new work tree
* `<leader>5` it is shows the erros and stuf like dignosist but i'll no longer need for this map so it might be remove

Harpoon `kishan/harpoon.lua`
* `<F3>` shows the file put in harpoon
* `<A-a>` add file to the harpoon
* `<A-h>` to privious file
* `<A-l>` to next file

debug `kishan/debug.lua`
* `<leader>b` set the breakpoint
* `<leader>B` breakpoint with condition
* `<leader>0` open dapui menu
* `<leader>1` step over
* `<leader>2` step into
* `<leader>3` step out
* `<F9>` continue debuggig

coc `kishan/coc.lua`
* `<leader>coc` i know that can be done manuly only one time but i use lua and in my pc it happen evry single day so .. i would prefer to do it
