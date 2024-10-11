require("lazy").setup({{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "go", "vim",  "vimdoc", "query", "elixir", "bash", "javascript", "html" },
          sync_install = false,
          auto_install = true,
          highlight = { enable = true, additional_vim_regex_highlighting = {"markdown"} },
          indent = { enable = true },  
        })
    end
 }})


local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }
