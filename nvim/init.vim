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

Plug 'simrat39/rust-tools.nvim'
Plug 'simrat39/symbols-outline.nvim'

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
set signcolumn=yes
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

	" if stridx(bufname("%"), "NERD_tree") == -1
	" 	if strchars(bufname("%")) > 0
	" 		:NERDTree | wincmd p
	" 	endif
	" endif

	" Space Bufferline
	" lua require('bufferline.state').set_offset(40, '')
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

	" nvim-cmp
	hi CmpItemAbbrMatch guifg=#88c0d0
	hi CmpItemAbbrMatchFuzzy guifg=#88c0d0
	" hi CmpItemKind
	hi CmpItemKindEnum guifg=#ebcb8b
	" hi CmpItemKindFile
	hi CmpItemKindText guifg=#bf616a
	" hi CmpItemKindUnit
	hi CmpItemKindClass guifg=#ebcb8b
	" hi CmpItemKindColor
	" hi CmpItemKindEvent
	hi CmpItemKindField guifg=#81a1c1
	" hi CmpItemKindValue
	" hi CmpItemKindFolder
	hi CmpItemKindMethod guifg=#b48ead
	hi CmpItemKindModule guifg=#d08770
	hi CmpItemKindStruct guifg=#ebcb8b
	" hi CmpItemKindDefault
	hi CmpItemKindKeyword guifg=#ebcb8b
	hi CmpItemKindSnippet guifg=#a3be8c
	hi CmpItemKindConstant guifg=#81a1c1
	hi CmpItemKindFunction guifg=#b48ead
	" hi CmpItemKindOperator
	hi CmpItemKindProperty guifg=#81a1c1
	hi CmpItemKindVariable guifg=#81a1c1
	" hi CmpItemKindInterface
	" hi CmpItemKindReference
	hi CmpItemKindEnumMember guifg=#ebcb8b
	hi CmpItemKindConstructor guifg=#b48ead
	hi CmpItemKindTypeParameter guifg=#bf616a

	" Disable overrode guifg colour for selected completion buffer
	hi PmenuSel guifg=NONE
endfunction

autocmd ColorScheme gruvbox call Gruvbox_config()
autocmd ColorScheme nord call Nord_config()

colorscheme nord

" autocmd BufEnter * call Bufferline_config()
autocmd VimEnter * call Bufferline_config()

set completeopt=menu,menuone,noselect

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.diagnostic.goto_next()<CR>

lua require('colorizer').setup()

lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
--   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- 
--   -- Enable completion triggered by <c-x><c-o>
--   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
-- 
--   -- Mappings.
--   local opts = { noremap=true, silent=true }
-- 
--   -- See `:help vim.lsp.*` for documentation on any of the below functions
--   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--   buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--   buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--   buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
--   buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
--   buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
-- 
-- end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'rust_analyzer', 'tsserver', 'vimls' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- on_attach = on_attach,
	capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    flags = {
      debounce_text_changes = 150,
    }
  }
end

local cmp = require("cmp")
local lspkind = require("lspkind")
require("Comment").setup()

-- Setup completion symbols

lspkind.init({
	with_text = true,
	preset = 'codicons',
	-- Personal overrides: Comment out for default codicons
	symbol_map = {
		Text = '',
	-- 	Method = '',
	-- 	Function = '',
	-- 	Constructor = '',
	-- 	Field = '',
		Variable = '',
	-- 	Class = '',
	-- 	Interface = '',
		Module = '',
	-- 	Property = '',
	-- 	Unit = '',
	-- 	Value = '',
		Enum = '',
		Keyword = '',
	-- 	Snippet = '',
	-- 	Color = '',
	-- 	File = '',
	-- 	Reference = '',
	-- 	Folder = '',
		EnumMember = '',
		Constant = '',
		Struct = '',
	-- 	Event = '',
	-- 	Operator = '',
	-- 	TypeParameter = '',
	-- }
	}
})

  -- Setup nvim-cmp.

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
		-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
		-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = {
		['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
		['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<Esc>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		-- ['<C-n>'] = cmp.mappinfunction(fallback)
		-- 	if cmp.visible() then
		-- 		cmp.select_next_item()
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { 'i', 's', }),
		-- ['<C-p>'] = cmp.mapping(function(fallback)
		-- 	if cmp.visible() then
		-- 		cmp.select_prev_item()
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { 'i', 's', }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'path' },
		{ name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
		}, {
		{ name = 'buffer', keyword_length = 5 },
	}),
	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				path = "[path]",
				nvim_lua = "[lua]",
			}
		}),
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	}
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})

-- require('nvim-treesitter.configs').setup({
-- 	ensure_installed = {},
-- 	sync_install = false,
-- 	ignore_install = {},
-- 	highlight = {
-- 		enable = true,
-- 		disable = {},
-- 	}
-- })

require('nvim-treesitter.configs').setup({
	ensure_installed = { 'rust', 'javascript', 'typescript' },
	highlight = {
		enable = true,
	}
})

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

EOF
