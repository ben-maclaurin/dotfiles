require("utils")

keymap("n", "<leader>ja", ":lua require(\"harpoon.mark\").add_file()<CR>")
keymap("n", "<leader>jj", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>")

keymap("n", "<leader>jn", ":lua require(\"harpoon.ui\").nav_next()<CR>")
keymap("n", "<leader>jp", ":lua require(\"harpoon.ui\").nav_prev()<CR>")

keymap("n", "<leader>j1", ":lua require(\"harpoon.ui\").nav_file(1)<CR>")
keymap("n", "<leader>j2", ":lua require(\"harpoon.ui\").nav_file(2)<CR>")
keymap("n", "<leader>j3", ":lua require(\"harpoon.ui\").nav_file(3)<CR>")
keymap("n", "<leader>j4", ":lua require(\"harpoon.ui\").nav_file(4)<CR>")
keymap("n", "<leader>j5", ":lua require(\"harpoon.ui\").nav_file(5)<CR>")
keymap("n", "<leader>j6", ":lua require(\"harpoon.ui\").nav_file(6)<CR>")
keymap("n", "<leader>j7", ":lua require(\"harpoon.ui\").nav_file(7)<CR>")
keymap("n", "<leader>j9", ":lua require(\"harpoon.ui\").nav_file(9)<CR>")

keymap("n", "<leader>;;", ":lua require(\"harpoon.term\").gotoTerminal(1)<CR>i")

keymap("n", "<leader>;1", ":lua require(\"harpoon.term\").gotoTerminal(1)<CR>")
keymap("n", "<leader>;2", ":lua require(\"harpoon.term\").gotoTerminal(2)<CR>")
keymap("n", "<leader>;3", ":lua require(\"harpoon.term\").gotoTerminal(3)<CR>")
keymap("n", "<leader>;4", ":lua require(\"harpoon.term\").gotoTerminal(4)<CR>")
keymap("n", "<leader>;5", ":lua require(\"harpoon.term\").gotoTerminal(5)<CR>")
keymap("n", "<leader>;6", ":lua require(\"harpoon.term\").gotoTerminal(6)<CR>")
keymap("n", "<leader>;7", ":lua require(\"harpoon.term\").gotoTerminal(7)<CR>")
keymap("n", "<leader>;8", ":lua require(\"harpoon.term\").gotoTerminal(8)<CR>")
keymap("n", "<leader>;9", ":lua require(\"harpoon.term\").gotoTerminal(9)<CR>")
