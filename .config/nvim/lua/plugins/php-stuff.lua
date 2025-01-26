return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      table.remove(opts.formatters_by_ft)
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft.php = { nil, }
    end,
  },
}
