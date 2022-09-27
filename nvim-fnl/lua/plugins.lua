-- :fennel:1664282486
local packer = require("packer")
local function _1_(use)
  _G.assert((nil ~= use), "Missing argument use on plugins.fnl:3")
  use("wbthomason/packer.nvim")
  use("justinmk/vim-sneak")
  return use("udayvir-singh/tangerine.nvim")
end
return packer.startup(_1_)