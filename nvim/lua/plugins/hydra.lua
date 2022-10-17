local Hydra = require('hydra')

Hydra({
	name = 'Cycle buffers',
  mode = 'n',
  body = '<leader>b',
  heads = {
     { 'j', ':bnext<CR>', { desc = 'Next buffer' } },
     { 'k', ':bprevious<CR>', { desc = 'Previous buffer' } },
  }
})

Hydra({
	name = 'Increase/Decrease Size',
  mode = 'n',
  body = '<leader>w=',
  heads = {
     { '=', ':vertical resize +10<CR>', { desc = 'Increase size' } },
     { '-', ':vertical resize -10<CR>', { desc = 'Decrease size' } },
  }
})


