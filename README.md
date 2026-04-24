# history.nvim

Adds a browser-like buffer history to each window open in neovim. 

Examples: 

1.
History = [A, B]
New Buffer = C
New History = [A, B, C]

2.
History = [A, B, C, D]
New Buffer = B
New History = [A, B]


## Install

```lua
use {
  'wilfreddenton/history.nvim',
  requires = { { 'nvim-lua/plenary.nvim' } }
}
```

## Setup

```lua
require('history').setup()
```

or 

```lua
require('history').setup({
  keybinds = {
    back = '<your custom keybind>',
    forward = '<your custom keybind>'
    view = '<your custom keybind>'
  }
})
```

## Usage

Default keybinds:

- back: `<leader>bb`
- forward: `<leader>bf`
- view: `<leader>bv`

When the `view` popup is open, pressing `q`, `<Esc>`, or `<C-c>` will close it and
pressing enter (`<CR>`) on any line will navigate the window to the referenced file.
