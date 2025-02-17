-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

-- formatting
vim.keymap.set({ "n", "v" }, "<space>f", function()
  Util.format({ force = true })
end, { desc = "Format" })

vim.keymap.set("n", "<space>b", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>" , { desc = "Open buffers" })

vim.keymap.set("n", "<leader>g]", function()
  if vim.wo.diff then
    return "<leader>g]"
  end
  vim.schedule(function()
    require('gitsigns').next_hunk()
  end)
  return "<Ignore>"
end, {expr=true, desc = "Next Hunk"})


vim.keymap.set("n", "<leader>g[", function()
  if vim.wo.diff then
    return "<leader>g["
  end
  vim.schedule(function()
    require('gitsigns').prev_hunk()
  end)
  return "<Ignore>"
end, {expr=true, desc = "Prev Hunk"})
