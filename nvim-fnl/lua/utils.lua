-- :fennel:1664283573
local function keymap(mode, lhs, rhs)
  _G.assert((nil ~= rhs), "Missing argument rhs on utils.fnl:1")
  _G.assert((nil ~= lhs), "Missing argument lhs on utils.fnl:1")
  _G.assert((nil ~= mode), "Missing argument mode on utils.fnl:1")
  return vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true, silent = true})
end
return keymap