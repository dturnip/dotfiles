call plug#begin(stdpath('data') . '/plugged')

Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'projekt0n/github-nvim-theme'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'glepnir/spaceline.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'shmargum/vim-sass-colors'
" Plug 'andweeb/presence.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'sbdchd/neoformat'
Plug 'sainnhe/everforest'
" Plug 'github/copilot.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/cmp-vsnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/nvim-cmp'

Plug 'numToStr/Comment.nvim'

Plug 'onsails/lspkind-nvim'

call plug#end()

" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "Neovim"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 0

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

" g:spaceline_colorscheme = 'space' | 'one' | 'nord' | 'dracula'
" let g:spaceline_colorscheme = 'space'
" let g:spaceline_seperate_style = 'arrow-fade'
" let g:spaceline_custom_vim_status =  {"n": "NORMAL","V":"VISUAL LINE","v":"VISUAL","\<C-v>": "VISUAL BLOCK","i":"INSERT","R":"REPLACE","s":"🅢 ","t":"🅣 ","c":"COMMAND","!":"SE"}
" let g:spaceline_diagnostic_errorsign = '✗ '
" let g:spaceline_diagnostic_warnsign = '● '
" let g:spaceline_git_branch_icon = ' '
" let g:spaceline_diff_tool = "coc"

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
" let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"

let g:NERDTreeWinSize = 40

set re=0
set background=dark
set number relativenumber
set nu rnu
set termguicolors
set shiftwidth=4
set tabstop=4
set encoding=UTF-8
set winfixwidth
set noshowmode
set cursorline
set mouse+=a
let &t_ut = ''
filetype plugin indent on

" let ayucolor="mirage"
" colorscheme ayu
" colorscheme nord

au Filetype lua setlocal shiftwidth=2 softtabstop=2 tabstop=2
au Filetype python setlocal shiftwidth=4 softtabstop=4 tabstop=4
au Filetype rust setlocal shiftwidth=4 softtabstop=4 tabstop=4

let g:neoformat_enabled_lua = ['stylua']

lua vim.opt.list = true
lua require("indent_blankline").setup {char="│", buftype_exclude={"terminal"}, show_end_of_line=true, show_current_context=true, show_first_indent_level=true}

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


" Refresh the NERDTree
nmap <leader>l  :NERDTreeFocus<cr> \| R \| <c-w><c-p>

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Buffer management
function Bufferline_config()

	" Buffer opened on VimEnter that is not NERD_tree

	if stridx(bufname("%"), "NERD_tree") == -1
		if strchars(bufname("%")) > 0
			:NERDTree | wincmd p
		endif
	endif

	" Space Bufferline
	lua require('bufferline.state').set_offset(40, 'FileTree')
	let g:bufferline.icon_pinned = ''
	let g:bufferline.icon_close_tab_modified = '●'
	let g:bufferline.maximum_padding = 4
	echo "Bufferline_config() loaded"
endfunction

nnoremap <leader>{  :BufferPrevious<CR>
nnoremap <leader>}  :BufferNext<CR>
nnoremap <leader>tp :BufferPin<CR>
nnoremap <leader>tw :BufferClose<CR>
nnoremap <leader>to :call Bufferline_config()<CR>:call Bufferline_config()<CR>

nnoremap <silent> <C-l> :nohl<CR><C-l>
" Open NERDTree
" nnoremap <C-n> :NERDTree<CR>
" Toggle NERDTree
" nnoremap <C-t> :NERDTreeToggle<CR>

function Gruvbox_config()
	set colorcolumn=120
	hi ColorColumn guibg=gray
	hi CursorLine guibg=none ctermbg=none
	hi LineNr guifg=#928374 guibg=none
	hi CursorLineNr guifg=#b16286 guibg=none
	hi Normal ctermbg=NONE guibg=NONE
endfunction

function Nord_config()
	set colorcolumn=120
	hi ColorColumn guibg=gray
	hi CursorLine guibg=none ctermbg=none
	hi CursorLineNr guifg=#b48ead guibg=none
	hi Normal ctermbg=NONE guibg=NONE
endfunction

autocmd ColorScheme gruvbox call Gruvbox_config()
autocmd ColorScheme nord call Nord_config()

colorscheme nord

lua << END
require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = 
		vim.g.colors_name == "gruvbox" and "gruvbox-material" or
		vim.g.colors_name == "nord" and "nord" or
		"auto",
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
