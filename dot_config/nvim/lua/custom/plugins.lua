local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    'TimUntersberger/neogit',
    dependencies = 'nvim-lua/plenary.nvim',
    opts = function ()
      require("custom.configs.neogit")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "jdtls",
        "pyright",
        "bashls",

        "prettier",
        "stylua",
        "clang_format", --  c, cpp, java and more but idc
        "ruff", -- python
        "shellcheck",
        "cspell",
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
    end
  },
 {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
     return require "custom.configs.rust-tools"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        -- uni
        "java",
        -- scripting
        "python",
        "bash",
        -- low level
        "c",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
        config = function()
           require "custom.configs.null-ls"
        end,
     },
     config = function()

      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
     end,
  },

 }
return plugins
