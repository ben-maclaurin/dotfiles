(local packer (require :packer))

(packer.startup (lambda [use]
  (use :wbthomason/packer.nvim)

  (use :justinmk/vim-sneak)

  (use :udayvir-singh/tangerine.nvim)
  ))
