-- Plugin: neokeys
-- Author: q9w
-- License: BSD 3-Clause License
-- Source: https://github.com/q9w/neokeys

local function setup()
    vim.api.nvim_set_keymap('', 'wh', "<C-W>h", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wl', "<C-W>l", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wj', "<C-W>j", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wk', "<C-W>k", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'ws', "<C-W>s", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wv', "<C-W>v", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wc', "<C-W>c", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wb', "<C-W>5<", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'we', "<C-W>5>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wu', ":resize +5<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wd', ":resize -5<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wi', "<C-W>=", {noremap = true, silent = true})

    vim.api.nvim_set_keymap('', 'wf', ":FloatermFirst<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wf', "<C-\\><C-n>:FloatermFirst<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wn', ":FloatermNext<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wn', "<C-\\><C-n>:FloatermNext<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wn', ":FloatermNext<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wn', "<C-\\><C-n>:FloatermNext<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wo', ":FloatermNew<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wo', "<C-\\><C-n>:FloatermNew<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wp', ":FloatermPrev<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wp', "<C-\\><C-n>:FloatermPrev<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wt', ":FloatermToggle<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wt', "<C-\\><C-n>:FloatermToggle<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wx', ":FloatermKill<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wx', "<C-\\><C-n>:FloatermKill<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('', 'wz', ":FloatermLast<CR>", {noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', 'wz', "<C-\\><C-n>:FloatermLast<CR>", {noremap = true, silent = true})
end

return {
    setup = setup
}
