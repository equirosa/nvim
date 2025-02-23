# Nvim Lua Configuration

<!-- vim-markdown-toc Marked -->

* [Installation](#installation)
  * [Plugins](#plugins)
* [Plugins](#plugins)
  * [Download vba file](#download-vba-file)
* [Mappings](#mappings)
  * [Table initialization](#table-initialization)
  * [Initialize mappings](#initialize-mappings)
* [Formatter](#formatter)

<!-- vim-markdown-toc -->

## Installation

### Plugins

Run the following commands inside vim:

- PackerInstall

## Plugins Config

To check the plugins installed go to **lua>plugins>\_packer.lua**

> Some plugins have requirements, others have an optional status.
> To better understand this file go to the [Packer documentation](https://github.com/wbthomason/packer.nvim#quickstart)

Each plugin is configured in **lua>plugins>\_pluginname.lua**

- This file is used to initalize the plugin's configurations and functions

### Download vba file

[visincr](www.drchip.org/astronaut/vim/vbafiles/visincr.vba.gz)
[vissort](www.drchip.org/astronaut/vim/vbafiles/vissort.vba.gz)

## Mappings

Confugured in **lua>modules>mappings>\_pluginname.lua**, mappings files use the following structure:

- Table with capital letter of the plugin's name
  - Mod key
  - Chord function to use the mod key
  - Function to call the plugin
  - All the possible mappings from the plugin
- Function to initialize mappings

### Table initialization

```lua
local T = {}

T = {
    MOD = 'f',
    chord = function(key) return '<leader>' .. T.MOD .. key end,
    telescope = function(cmd)
        return 'require("plugins._telescope").' .. cmd .. '()'
    end,
    file_pickers = {
        find_files = function(keys) K.run_lua(keys, T.telescope('find_files')) end,
        frecency = function(keys) K.run_lua(keys, T.telescope('frecency')) end,
        git_files = function(keys) K.run_lua(keys, T.telescope('git_files')) end,
        live_grep = function(keys) K.run_lua(keys, T.telescope('live_grep')) end,
    },
    git = {
        --- More functions
```

### Initialize mappings

```lua
T.initialize_mappings = function()
    T.file_pickers.find_files(T.chord('F'))
    T.file_pickers.frecency(T.chord('r'))
    T.file_pickers.git_files(T.chord('f'))
end
```
