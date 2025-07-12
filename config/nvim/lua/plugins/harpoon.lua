return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  commit = "e76cb03",
  dependencies = { "nvim-lua/plenary.nvim" },
  settings = {
    save_on_toggle = true,
    save_on_ui_close = true,
    key = function()
      return vim.loop.cwd()
    end,
  },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    -- local harpoon_extensions = require("harpoon.extensions")
    -- harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<C-S-N>", function()
      harpoon:list():next()
    end)
  end,
}
