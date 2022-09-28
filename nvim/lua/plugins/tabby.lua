local theme = {
    fill = 'TabLineFill',
    head = 'TabLine',
    current_tab = 'TabLineSel',
    tab = 'TabLine',
    win = 'TabLine',
    tail = 'TabLine'
}

require('tabby.tabline').set(function(line)
    return {
        {{'  ', hl = theme.head}, line.sep('', theme.head, theme.fill)},
        line.tabs().foreach(function(tab)
            local hl = tab.is_current() and theme.current_tab or theme.tab
            return {
                line.sep('', hl, theme.fill),
                tab.is_current() and '' or '',
                tab.number(),
                tab.name(),
                tab.close_btn(''),
                line.sep('', hl, theme.fill),
                hl = hl,
                margin = ' '
            }
        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
            return {
                line.sep('', theme.win, theme.fill),
                win.is_current() and '' or '',
                win.buf_name(),
                line.sep('', theme.win, theme.fill),
                hl = theme.win,
                margin = ' '
            }
        end),
        {line.sep('', theme.tail, theme.fill), {'  ', hl = theme.tail}},
        hl = theme.fill
    }
end)

require("utils")

keymap("n", "<leader>to", ":$tabnew<CR>")
keymap("n", "<leader>tn", ":tabn<CR>")
keymap("n", "<leader>tp", ":tabp<CR>")
keymap("n", "<leader>tq", ":tabclose<CR>")
keymap("n", "<leader>tmp", ":-tabmove<CR>")
keymap("n", "<leader>tmn", ":+tabmove<CR>")

keymap("n", "<leader>bn", ":bnext<CR>")
keymap("n", "<leader>bp", ":bprevious<CR>")
keymap("n", "<leader>bq", ":bclose<CR>")
