### notes about using vim

things i want to change in neovim config:
- change C-e from moving the page one line to going to end of line (like emacs)
- install undo tree
- create a keymap that opens up telescope help tags
- create quick keymap to resize splitpanes
- create quick keymap to jump between splitpanes
- create a quick keymap function to toggle `:Lex 20`

notes from watching [primeagen vid](https://www.youtube.com/watch?v=-ybCiHPWKNA):
- when using `f` to find a character in a line, use `;` and `,` to go find the next and previous (respectively) instances in the line 
- vim.g is global variables
-  vim.opt is global vim options (equivalent of doing `set`. vim.o is equivalent but you set the variables just like vimscript but vim.opt you set them with lua tables
- C-w v => vertical split
- C-w s => (horizontal) split
- C-w C-o => close other windows(splits)

