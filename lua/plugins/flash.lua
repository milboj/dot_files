return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    -- disable the default flash keymap
    { "s", mode = { "n", "x", "o" }, false },
    { "<space>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Jump to place" },
    { "<space>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Jump Treesitter" },
    { "<space>r", mode = "o", function() require("flash").remote() end, desc = "Remote Jump to text" },
    { "<space>R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  }
,
}
