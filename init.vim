let path = stdpath('config')
exec 'source' path . '/modules/plugins.vim'

exec 'source' path . '/modules/defaults.vim'
exec 'source' path . '/modules/light_line.vim'
exec 'source' path . '/modules/theme.vim'

exec 'source' path . '/modules/coc/coc_nvim_defaults.vim'
exec 'source' path . '/modules/coc/extensions.vim'
exec 'source' path . '/modules/coc/fzf.vim'
exec 'source' path . '/modules/coc/git.vim'

exec 'source' path . '/modules/hlnext.vim'
exec 'source' path . '/modules/small_plugins.vim'
exec 'source' path . '/modules/vimspector.vim'
