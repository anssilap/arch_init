return {
  { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    lazy = false,
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format { async = true, lsp_fallback = true }
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        c = { "astyle" },
        cpp = { "astyle" },
        -- vue = { "volar" },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        -- javascript = { { "prettierd", "prettier" } },
      },
      formatters = {
        -- eslint_d = {},
        stylua = {
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2", "--column-width", "120" },
        },
        astyle = {
          prepend_args = {
            "--indent=spaces=4",
            "--indent-after-parens",
            "max-code-length=120",
            "--break-after-logical",
          },
        },
      },
    },
  },
}
