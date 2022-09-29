(local packer (require :packer))

(packer.startup (lambda [use]
  (use :wbthomason/packer.nvim)

  (use :justinmk/vim-sneak)

  (use :folke/tokyonight.nvim)

  (use :glepnir/dashboard-nvim {:config (require :plugins.dashboard)})

  (use :udayvir-singh/tangerine.nvim)
))
