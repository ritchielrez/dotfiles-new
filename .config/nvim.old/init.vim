" Load up my lua config
lua require("init") 

filetype plugin indent on

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

let g:dashboard_default_executive ='telescope'

let g:vimspector_enable_mappings='HUMAN'

let g:floaterm_keymap_new = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<A-t>' 

colorscheme gruvbox-material

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
