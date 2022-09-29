-- :fennel:1664323193
local packer = require("packer")
local function _1_(use)
  _G.assert((nil ~= use), "Missing argument use on plugins.fnl:3")
  use("wbthomason/packer.nvim")
  use("justinmk/vim-sneak")
  use("folke/tokyonight.nvim")
  use("glepnir/dashboard-nvim", {config = require("plugins.dashboard")})
  return use("udayvir-singh/tangerine.nvim")
end
return packer.startup(_1_)