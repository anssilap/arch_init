-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 15
vim.opt.expandtab = true

if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.cmd "language en_US"
end

vim.o.guifont = "NotoSansM Nerd Font:h12"
-- vim.o.guifont = "NotoMono Nerd Font:h14"
-- vim.o.guifont = "JetbrainsMonoNL Nerd Font Mono:h12"
-- vim.o.guifont = "MartianMono Nerd Font Propo:h11"
-- vim.o.guifont = "ProggyCleanSZ Nerd Font Mono:h16"

if vim.g.neovide then
  vim.g.neovide_cursor_trail_size = 0.4
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_scroll_animation_length = 0.05
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-+>", function()
    print "UI scale factor 1.2"
    change_scale_factor(1.2)
  end)
  vim.keymap.set("n", "<C-->", function()
    print "UI scale factor 1 / 1.2"
    change_scale_factor(1 / 1.2)
  end)
  vim.keymap.set("n", "<C-0>", function()
    print "UI scale factor reset"
    -- Key bind works, but there doesn't seem to be command which would reset UI scale
    -- Command below doesn't do anything, because it seems to change scale relative to current scale
    change_scale_factor(1.0)
  end)
  vim.keymap.set("i", "<CS-v>", '<ESC>"+Pi<Right>')
end

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand "~" .. "/.vim/undodir/"
vim.opt.undofile = true

-- Change window title when entering buffer
vim.opt.title = true
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    -- vim.opt.titlestring = vim.fn.getcwd() .. " - nvim"
    -- local folder = vim.fn.fnamemodify(vim.fn.expand("%:p:h"), ":h")
    -- local folder = vim.fn.fnamemodify(vim.fn.expand("%:h"), ":h")
    local folder = vim.fn.getcwd()
    local home_dir = vim.fn.expand "~"
    local folder_no_home = string.gsub(folder, home_dir, "")
    vim.opt.titlestring = folder_no_home .. " - Neovim"
  end,
})

-- Attempted to color the cursor, but it doesn't seem to work
function CursorColorOverride()
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#cc9900", bg = "#339966" })
  vim.api.nvim_set_hl(0, "CursorReset", { fg = "white", bg = "white" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = CursorColorOverride,
})
