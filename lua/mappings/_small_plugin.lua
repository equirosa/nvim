local U = require('utils')
-- Hop
U.run_lua('n', ';;', 'require("hop").hint_words()')
U.run_vim('n', ';l', 'HopLine')
U.run_vim('n', ';s', 'HopPattern')
U.run_vim('n', ';n', 'HopWordAC')
U.run_vim('n', ';p', 'HopWordBC')
U.run_vim('n', '<leader>sw', 'CtrlSF')
U.run_vim('n', '<leader>ss', 'CtrlSF ', false)
U.run_vim('n', '<leader>bx', 'Sayonara')
U.run_vim('n', '<leader>bX', 'Sayonara!')
-- U.run_vim('<C-n>', 'NvimTreeToggle')
U.run_vim('n', '<C-w>m', ':MaximizerToggle<CR>')
U.run_vim('t', '<C-w>m', '<C-\\><C-n> :MaximizerToggle<CR>')
U.apply_globals({
    Illuminate_delay = 300,
    Illuminate_ftblacklist = {},
    Illuminate_highlightUnderCursor = 0,
    indentLine_char_list = {'┊', '┆', '¦', '|'},
    rooter_patterns = {
        '.git', 'Makefile', '*.sln', 'build/env.sh', '.vscode', 'src',
        'node_modules'
    },
    rooter_silent_chdir = 0,
    sort_motion_visual_block_command = 'Vissort',
    maximizer_set_mapping_with_bang = 1,
    sort_motion_flags = 'ui',
    VM_leader = '\\'
})
