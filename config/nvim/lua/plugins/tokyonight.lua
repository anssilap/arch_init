return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "folke/tokyonight.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme "tokyonight-storm"

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi("Comment gui=none")
      -- vim.cmd.hi("function gui='#ff0000'")
      -- vim.cmd.hi("Normal guifg=#bdcaf5 guibg=24283b")
      -- vim.cmd.hi("function guifg=#ff0000")
      -- vim.cmd.hi("@keyword.conditional guifg=#daae68")
      -- vim.cmd.hi("type guifg=#daae68")
      -- vim.cmd.hi("type.builtin guifg=#ff00ff")
    end,
  },
}
