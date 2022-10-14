local Hydra = require('hydra')

Hydra({
	name = 'Increase/Decrease Size',
  mode = 'n',
  body = '<leader>w=',
  heads = {
     { '=', ':vertical resize +10<CR>', { desc = 'Increase size' } },
     { '-', ':vertical resize -10<CR>', { desc = 'Decrease size' } },
  }
})


