local U = require('utils')

local T = {}

T = {
    MOD = 'f',
    chord = function(key) return '<leader>' .. T.MOD .. key end,
    telescope = function(cmd)
        return 'require("plugins._telescope").' .. cmd .. '()'
    end,
    file_pickers = {
        find_files = function(keys)
            U.run_lua('n', keys, T.telescope('find_files'))
        end,
        frecency = function(keys)
            U.run_lua('n', keys, T.telescope('frecency'))
        end,
        git_files = function(keys)
            U.run_lua('n', keys, T.telescope('git_files'))
        end,
        live_grep = function(keys)
            U.run_lua('n', keys, T.telescope('live_grep'))
        end
    },
    git = {
        branches = function(keys)
            U.run_lua('n', keys, T.telescope('git_branches'))
        end,
        status = function(keys)
            U.run_lua('n', keys, T.telescope('git_status'))
        end,
        commits = function(keys)
            U.run_lua('n', keys, T.telescope('git_commits'))
        end,
        bcommits = function(keys)
            U.run_lua('n', keys, T.telescope('git_bcommits'))
        end
    },
    lsp = {
        code_actions = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_code_actions'))
        end,
        document_diagnostics = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_document_diagnostics'))
        end,
        document_symbols = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_document_symbols'))
        end,
        definitions = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_definitions'))
        end,
        references = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_references'))
        end,
        workspace_diagnostics = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_workspace_diagnostics'))
        end,
        workspace_symbols = function(keys)
            U.run_lua('n', keys, T.telescope('lsp_workspace_symbols'))
        end
    },
    vim_pickers = {
        buffers = function(keys)
            U.run_lua('n', keys, T.telescope('buffers'))
        end,
        command_history = function(keys)
            U.run_lua('n', keys, T.telescope('command_history'))
        end,
        commands = function(keys)
            U.run_lua('n', keys, T.telescope('commands'))
        end,
        help_tags = function(keys)
            U.run_lua('n', keys, T.telescope('help_tags'))
        end,
        keymaps = function(keys)
            U.run_lua('n', keys, T.telescope('keymaps'))
        end,
        marks = function(keys) U.run_lua('n', keys, T.telescope('marks')) end,
        registers = function(keys)
            U.run_lua('n', keys, T.telescope('registers'))
        end,
        reloader = function(keys)
            U.run_lua('n', keys, T.telescope('reloader'))
        end,
        search_history = function(keys)
            U.run_lua('n', keys, T.telescope('search_history'))
        end,
        spell_suggest = function(keys)
            U.run_lua('n', keys, T.telescope('spell_suggest'))
        end,
        tags = function(keys) U.run_lua('n', keys, T.telescope('tags')) end,
        vim_options = function(keys)
            U.run_lua('n', keys, T.telescope('vim_options'))
        end
    },
}

T.initialize_mappings = function()
    T.file_pickers.find_files(T.chord('F'))
    T.file_pickers.frecency(T.chord('r'))
    T.file_pickers.git_files(T.chord('f'))
    T.file_pickers.live_grep(T.chord('g'))

    T.vim_pickers.buffers(T.chord('b'))
    T.vim_pickers.command_history('q:')
    T.vim_pickers.commands(T.chord('c'))
    T.vim_pickers.help_tags(T.chord('h'))
    T.vim_pickers.keymaps(T.chord('k'))
    T.vim_pickers.marks(T.chord('m'))
    T.vim_pickers.registers(T.chord('S'))
    T.vim_pickers.reloader(T.chord('R'))
    T.vim_pickers.search_history(T.chord('s'))
    T.vim_pickers.spell_suggest('z=')
    T.vim_pickers.tags(T.chord('t'))
    T.vim_pickers.vim_options(T.chord('o'))
end

return T
