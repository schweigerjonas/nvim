return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      -- classic command line instead of pop-up
      opts.cmdline = {
        view = "cmdline", -- move command line to bottom
      }
      opts.presets = {
        lsp_doc_border = true,
        command_palette = false, -- tab completions for command line don't pop-up at top
      }
    end,
  },
}
