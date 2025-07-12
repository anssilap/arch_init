return {
  require("lazy").setup({
    -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

    -- NOTE: Plugins can also be added by using a table,
    -- with the first argument being the link and the following
    -- keys can be used to configure plugin behavior/loading/etc.
    --
    -- Use `opts = {}` to force a plugin to be loaded.
    --
    -- Vue formatting for different sections doesn't work without this!
    "JoosepAlviste/nvim-ts-context-commentstring",

    --  This is equivalent to:
    --    require('Comment').setup({})

    -- "gc" to comment visual regions/lines
    {
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup({
          mappings = {
            basic = true, -- Enable basic mappings like gcc and gc
            extra = false, -- Disable extra mappings like gco, gcO, gcA
          },
        })
        local ft = require("Comment.ft")
        ft.set("c", "// %s")
      end,
      -- opts = {
      --   pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      -- },
    },
    -- {
    -- 	"javiorfo/nvim-popcorn",
    -- 	opts = {
    -- 		width = 50,
    -- 		height = 50,
    -- 		-- border = border.rounded_corners_border,
    -- 	},
    -- },
    { import = "plugins" },
  }, {
    ui = {
      -- If you are using a Nerd Font: set icons to an empty table which will use the
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      icons = vim.g.have_nerd_font and {} or {
        cmd = "⌘",
        config = "🛠",
        event = "📅",
        ft = "📂",
        init = "⚙",
        keys = "🗝",
        plugin = "🔌",
        runtime = "💻",
        require = "🌙",
        source = "📄",
        start = "🚀",
        task = "📌",
        lazy = "💤 ",
      },
    },
    change_detection = {
      notify = false,
    },
  }),
}
