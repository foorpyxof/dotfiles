local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- Languages
    -- Native
    { import = "lazyvim.plugins.extras.lang.clangd" },

    -- Webdev
    { import = "lazyvim.plugins.extras.lang.php" },

    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "cyberdream", "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

require("lualine").setup({
  options = {
    theme = "catppuccin",
  },
})

local clangd_path = io.popen("find $HOME/.espressif/tools/esp-clang/ -name 'clangd' | grep --color=never -z ."):read()

if os.getenv("IDF_PATH") ~= nil and clangd_path ~= nil then
  require("lspconfig").clangd.setup({
    cmd = {
      clangd_path,
      "--background-index",
      "--clang-tidy",
      "--header-insertion=never",
      "--completion-style=detailed",
      "--function-arg-placeholders",
      "--fallback-style=llvm",
    },
  })
end

require("cyberdream").setup({
  cache = true,
  terminal_colors = true,

  theme = {
    --variant = "light",
    variant = "default",
    saturation = 0.8,

    highlights = {
      Comment = { fg = "#5e6165", bg = "NONE", italic = true },
    },

    colors = {
      --bg = "#c480b2",
      --bg = "#1e1621",
      --fg = "#463232",
    },
  },

  extensions = {},
})

require("fluoromachine").setup({
  transparent = false,
  theme = "fluoromachine",
})

-- require("presence").setup({
--   neovim_image_text = "neovim btw",
--   main_image = "file",
--   buttons = { { label = "uwu", url = "https://goodgirl.dev" } },
-- })
require("neocord").setup({
  global_timer = true,
  buttons = { { label = "uwu", url = "https://goodgirl.dev" } },
})

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>d", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "<C-;>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-->", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-=>", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-[>", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-]>", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<C-h>", function()
  harpoon:list():prev()
end)

vim.keymap.set("n", "<C-l>", function()
  harpoon:list():next()
end)
