-- Plugin: neokeys
-- Author: q9w
-- License: BSD 3-Clause License
-- Source: https://github.com/q9w/neokeys

local function setup()
    local opts = {
        nowait = true, noremap = true, silent = true
    }

    -- Set leader
    vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)
    vim.g.mapleader = ' '

    -- telescope
    vim.api.nvim_set_keymap('n', '<Leader><Space>', ':Telescope oldfiles<CR>', opts)

    -- copy all
    vim.api.nvim_set_keymap('n', '<Leader>a', ':%+y<CR>', opts)

    -- back to buffer
    vim.api.nvim_set_keymap('n', '<Leader>b', '<cmd>:BufferLinePick<CR>', opts)

    -- commend
    -- vim.api.nvim_set_keymap('n', '<Leader>c', '<Plug>kommentary_line_default', opts)

    -- dashboard
    vim.api.nvim_set_keymap('n', '<Leader>d', ':Dashboard<CR>', opts)

    -- explorer
    vim.api.nvim_set_keymap('n', '<Leader>e', '<cmd>NvimTreeToggle<CR>', opts)

    -- no hl
    vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)

    -- quit
    vim.api.nvim_set_keymap('', '<Leader>q', '<cmd>qa<CR>', opts)

    -- write
    vim.api.nvim_set_keymap('', '<Leader>w', '<cmd>w<CR>', opts)

    -- buffer keys
    vim.api.nvim_set_keymap('', 'bb', "<cmd>:e #<cr>", opts)
    vim.api.nvim_set_keymap('', 'bd', "<cmd>:bd<CR>", opts)
    vim.api.nvim_set_keymap('', 'be', "<cmd>:BufferLineSortByExtension<CR>", opts)
    vim.api.nvim_set_keymap('', 'bf', "<cmd>:BufferLineSortByDirectory<CR>", opts)
    vim.api.nvim_set_keymap('', 'bh', "<cmd>:BufferLineMovePrev<CR>", opts)
    vim.api.nvim_set_keymap('', 'bj', "<cmd>:BufferLinePick<CR>", opts)
    vim.api.nvim_set_keymap('', 'bk', "<cmd>:BufferLinePick<CR>", opts)
    vim.api.nvim_set_keymap('', 'bl', "<cmd>:BufferLineMoveNext<CR>", opts)
    vim.api.nvim_set_keymap('', 'bn', "<cmd>:BufferLineCycleNext<CR>", opts)
    vim.api.nvim_set_keymap('', 'bp', "<cmd>:BufferLineCyclePrev<CR>", opts)

    -- e keys
    vim.api.nvim_set_keymap('', 'ee', "<cmd>NvimTreeToggle<cr>", opts)

    -- floaterm keys
    vim.api.nvim_set_keymap('', 'wf', ":FloatermFirst<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wf', "<C-\\><C-n>:FloatermFirst<CR>", opts)
    vim.api.nvim_set_keymap('', 'wn', ":FloatermNext<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wn', "<C-\\><C-n>:FloatermNext<CR>", opts)
    vim.api.nvim_set_keymap('', 'wo', ":FloatermNew<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wo', "<C-\\><C-n>:FloatermNew<CR>", opts)
    vim.api.nvim_set_keymap('', 'wp', ":FloatermPrev<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wp', "<C-\\><C-n>:FloatermPrev<CR>", opts)
    vim.api.nvim_set_keymap('', 'wt', ":FloatermToggle<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wt', "<C-\\><C-n>:FloatermToggle<CR>", opts)
    vim.api.nvim_set_keymap('', 'wx', ":FloatermKill<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wx', "<C-\\><C-n>:FloatermKill<CR>", opts)
    vim.api.nvim_set_keymap('', 'wz', ":FloatermLast<CR>", opts)
    vim.api.nvim_set_keymap('t', 'wz', "<C-\\><C-n>:FloatermLast<CR>", opts)

    --lightspeed keys
    vim.api.nvim_set_keymap('n', ';', '<Plug>Lightspeed_s<enter>', opts)
    vim.api.nvim_set_keymap('n', ',', '<Plug>Lightspeed_S<enter>', opts)

    -- neohop keys
    vim.api.nvim_set_keymap('', 'h', "<cmd>lua require'hop'.hint_words()<cr>", opts)
    --[[ vim.api.nvim_set_keymap('', 's', "<cmd>lua require'hop'.hint_char2()<cr>", opts)
    vim.api.nvim_set_keymap('', 'S', "<cmd>lua require'hop'.hint_char1()<cr>", opts) ]]
    vim.api.nvim_set_keymap('', 'l', "<cmd>lua require'hop'.hint_lines()<cr>", opts)

    -- jump keys
    vim.api.nvim_set_keymap('n', 'ja', "<cmd>:AnyJump<CR>", opts)
    vim.api.nvim_set_keymap('x', 'ja', "<cmd>:AnyJumpVisual<CR>", opts)
    vim.api.nvim_set_keymap('', 'jb', "<cmd>:AnyJumpBack<CR>", opts)
    vim.api.nvim_set_keymap('', 'jl', "<cmd>:AnyJumpLastResults<CR>", opts)

    -- Snap keys
    vim.api.nvim_set_keymap('', 'sb', "<cmd>SnapBuffers<cr>", opts)
    vim.api.nvim_set_keymap('', 'sf', "<cmd>SnapFiles<cr>", opts)
    vim.api.nvim_set_keymap('', 'sg', "<cmd>SnapGrep<cr>", opts)
    vim.api.nvim_set_keymap('', 'so', "<cmd>SnapOldFiles<cr>", opts)
    vim.api.nvim_set_keymap('', 'ss', "<cmd>SnapGrepSelectedWord<cr>", opts)

    vim.api.nvim_set_keymap('', 'sp', "<cmd>Spectre<cr>", opts)

    -- Telescope keys
    vim.api.nvim_set_keymap('', 'eb', "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
    vim.api.nvim_set_keymap('', 'ec', "<cmd>Telescope colorscheme<cr>", opts)
    vim.api.nvim_set_keymap('', 'ed', "<cmd>Telescope lsp_document_diagnostics<cr>", opts)
    vim.api.nvim_set_keymap('', 'ef', "<cmd>Telescope find_files<cr>", opts)
    vim.api.nvim_set_keymap('', 'eg', "<cmd>Telescope live_grep<cr>", opts)
    vim.api.nvim_set_keymap('', 'eh', "<cmd>Telescope command_history<cr>", opts)
    vim.api.nvim_set_keymap('', 'em', "<cmd>Telescope marks<cr>", opts)
    vim.api.nvim_set_keymap('', 'eo', "<cmd>Telescope oldfiles<cr>", opts)
    vim.api.nvim_set_keymap('', 'ep', "<cmd>Telescope man_pages<cr>", opts)
    vim.api.nvim_set_keymap('', 'er', "<cmd>Telescope registers<cr>", opts)
    vim.api.nvim_set_keymap('', 'eR', "<cmd>lua require('spectre').open()<CR>", opts)
    vim.api.nvim_set_keymap('', 'ew', "<cmd>Telescope lsp_workspace_diagnostics<cr>", opts)

    -- window keys
    vim.api.nvim_set_keymap('', 'ww', "<C-W>p", opts)
    vim.api.nvim_set_keymap('', 'wh', "<C-W>h", opts)
    vim.api.nvim_set_keymap('', 'wl', "<C-W>l", opts)
    vim.api.nvim_set_keymap('', 'wj', "<C-W>j", opts)
    vim.api.nvim_set_keymap('', 'wk', "<C-W>k", opts)
    vim.api.nvim_set_keymap('', 'ws', "<C-W>s", opts)
    vim.api.nvim_set_keymap('', 'wv', "<C-W>v", opts)
    vim.api.nvim_set_keymap('', 'wc', "<C-W>c", opts)
    vim.api.nvim_set_keymap('', 'wb', "<C-W>5<", opts)
    vim.api.nvim_set_keymap('', 'we', "<C-W>5>", opts)
    vim.api.nvim_set_keymap('', 'wu', ":resize +5<CR>", opts)
    vim.api.nvim_set_keymap('', 'wd', ":resize -5<CR>", opts)
    vim.api.nvim_set_keymap('', 'wi', "<C-W>=", opts)

    -- x keys
    vim.api.nvim_set_keymap('', 'x', "<NOP>", opts)
    vim.api.nvim_set_keymap('', 'xx', "<Delete>", opts)
    vim.api.nvim_set_keymap('', 'xr', "<C-r>", opts)
    vim.api.nvim_set_keymap('!', 'xr', "<C-r>", opts)
    vim.api.nvim_set_keymap('', 'xo', "<C-o>", opts)
    vim.api.nvim_set_keymap('', 'xi', "<C-i>", opts)
    vim.api.nvim_set_keymap('', 'xf', "<C-f>", opts)
    vim.api.nvim_set_keymap('', 'xb', "<C-b>", opts)
    vim.api.nvim_set_keymap('i', 'xp', '<ESC>"+pa', opts)

    -- zen keys
    vim.api.nvim_set_keymap('', 'zy', ":Goyo<CR>", opts)
    vim.api.nvim_set_keymap('', 'zz', "<cmd>lua require'zen-mode'.toggle()<cr>", opts)

    -- special keys
    vim.api.nvim_set_keymap('!', 'jk', "<ESC>", opts)
    vim.api.nvim_set_keymap('', 'jk', "<ESC>", opts)

    vim.api.nvim_set_keymap('', 'H', "^", opts)
    vim.api.nvim_set_keymap('', 'L', "$", opts)

    vim.api.nvim_set_keymap('!', ';a', "<ESC>A", opts)

    vim.api.nvim_set_keymap('', 'xh', "<LEFT>", opts)
    vim.api.nvim_set_keymap('', 'xl', "<RIGHT>", opts)
    vim.api.nvim_set_keymap('!', 'xh', "<LEFT>", opts)
    vim.api.nvim_set_keymap('!', 'xl', "<RIGHT>", opts)

    vim.api.nvim_set_keymap('', 'U', "<C-r>", opts)
    vim.api.nvim_set_keymap('', 'wq', "ZZ", opts)
end

return {
    setup = setup
}
