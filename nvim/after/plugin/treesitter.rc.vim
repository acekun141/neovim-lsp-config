if !exists('g:loaded_nvim_treesitter') | finish | endif

lua << EOF
require 'nvim-treesitter.configs'.setup {
  hightlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss",
    "python",
    "go"
  }
}
EOF
