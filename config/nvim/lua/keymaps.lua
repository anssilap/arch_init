-- This file needs some cleanup

-- Move visually selected lines up or down
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "<M-down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<M-up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Center cursor on screen after going half page up or down
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")
vim.keymap.set("n", "<PageUp>", "<C-u>zz")
vim.keymap.set("n", "<PageDown>", "<C-d>zz")

-- Retain selection when doing indentation with < and >
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Remove buffer without killing the split
vim.keymap.set("n", "<C-q>", "<cmd>bp|bd #<CR>")

-- Changing split size
vim.keymap.set("n", "<M-,>", "<c-w>5<")
vim.keymap.set("n", "<M-.>", "<c-w>5>")
vim.keymap.set("n", "<M-t>", "<c-w>+")
vim.keymap.set("n", "<M-s>", "<c-w>-")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>p", [["_dP]])

-- vim.keymap.set("n", "<leader>wl", ":Telescope workspaces<CR>", { desc = "[W]orkspace [L]ist" })

-- [[ Basic Keymaps ]]
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>we", vim.cmd.Ex, { desc = "Open netrw" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- VS style home-key functionality
vim.keymap.set({ "n", "i" }, "<Home>", function()
  local current_line_number = vim.api.nvim_win_get_cursor(0)[1]
  local current_column_number = vim.api.nvim_win_get_cursor(0)[2]
  local first_non_blank_on_current_line = vim.api.nvim_get_current_line():match("^%s*"):len()

  if current_column_number == first_non_blank_on_current_line then
    vim.api.nvim_win_set_cursor(0, { current_line_number, 0 })
  else
    vim.api.nvim_win_set_cursor(0, { current_line_number, first_non_blank_on_current_line })
  end
end)

-- Keymaps
vim.keymap.set("n", "<leader>tr", function()
  vim.o.relativenumber = not vim.o.relativenumber
end, { desc = "[tr] [T]oggle [R]elative linenumbers" })
vim.keymap.set("n", "<leader>tl", function()
  vim.wo.number = not vim.wo.number
end, { desc = "[tl] [T]oggle [L]inenumbers" })
vim.keymap.set("n", "<leader>tw", function()
  vim.o.wrap = not vim.o.wrap
end, { desc = "[tw] [T]oggle Line [W]rapping" })

vim.keymap.set("n", "<leader>sF", function()
  require("telescope.builtin").find_files { hidden = true }
end)

-- NOTE: Originally tried to put this in FileType event autocmd but it is apparently too early for `set modifiable` to take effect
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = vim.api.nvim_create_augroup("YOUR_GROUP_HERE", { clear = true }),
  desc = "allow updating quickfix window",
  pattern = "quickfix",
  callback = function(ctx)
    vim.bo.modifiable = true
    -- :vimgrep's quickfix window display format now includes start and end column (in vim and nvim) so adding 2nd format to match that
    vim.bo.errorformat = "%f|%l col %c| %m,%f|%l col %c-%k| %m"
    vim.keymap.set(
      "n",
      "<C-s>",
      '<Cmd>cgetbuffer|set nomodified|echo "quickfix/location list updated"<CR>',
      { buffer = true, desc = "Update quickfix/location list with changes made in quickfix window" }
    )
  end,
})

-- Following three autocmd definitions try to eliminate the problem that Neovim :term command shows
-- line numbers. I don't want line numbers in my terminal, but I want to see them in normal editor
-- buffers and splits. This setup mostly works, but row numbers show up in terminal as soon as you
-- you change to another split that isn't teminal.

-- Disable line numbers in terminal buffers
vim.api.nvim_create_autocmd({ "TermOpen" }, {
  pattern = "*",
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*lazygit*",
  callback = function(args)
    -- Override the global mapping in this buffer by mapping to <Nop>
    vim.keymap.set("t", "<Esc><Esc>", "<Nop>", { buffer = args.buf })
  end,
})

-- Disable line numbers when entering a terminal buffer
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = "term://*",
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = false
  end,
})

-- Re-enable line numbers when leaving the terminal buffer
vim.api.nvim_create_autocmd({ "BufLeave" }, {
  pattern = "term://*",
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = true
  end,
})
