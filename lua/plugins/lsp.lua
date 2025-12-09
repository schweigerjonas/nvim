return {
  -- tools
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "selene",
        "stylua",
        "luacheck",
        "lua-language-server",
        "shellcheck",
        "shfmt",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "angular-language-server",
        "svelte-language-server",
        "gopls",
        "clangd",
        "arduino-language-server",
        "markdownlint-cli2",
        "markdown-toc",
        "tinymist",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        arduino_language_server = {
          cmd = {
            "arduino-language-server",
            "-cli-config",
            vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
            "-fqbn",
            -- change to board type currenty in use
            "arduino:avr:uno",
          },
          capabilities = {
            textDocument = {
              semanticTokens = vim.NIL,
            },
            workspace = {
              semanticTokens = vim.NIL,
            },
          },
        },
        clangd = {},
      },
    },
  },
}
