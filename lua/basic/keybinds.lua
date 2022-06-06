-- leader 键设置为空格
vim.g.mapleader = " "

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
    gmap = vim.api.nvim_set_keymap,
    bmap = vim.api.nvim_buf_set_keymap,
    dgmap = vim.api.nvim_del_keymap,
    dbmap = vim.api.nvim_buf_del_keymap,
    opts = {noremap = true, silent = true}
}

-- 插入模下 jj 退出插入模式
--vim.keybinds.gmap("i", "jj", "<Esc>", vim.keybinds.opts)

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<a-k>", "10k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)
vim.keybinds.gmap("n", "<a-j>", "10j", vim.keybinds.opts)

-- 插入模式下的上下左右移动
vim.keybinds.gmap("i", "<A-k>", "<up>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-j>", "<down>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-h>", "<left>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-l>", "<right>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-;>", "<bs>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-/>", "<cr>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-,>", "<del>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<A-.>", "<tab>", vim.keybinds.opts)

-- 修改分屏大小
vim.keybinds.gmap("n", "<C-up>", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-down>", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-left>", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-right>", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显示
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)

--vim.keybinds.gmap("n", "<m-n>", "<pagedown>", vim.keybinds.opts)
--vim.keybinds.gmap("n", "<m-p>", "<pageup>", vim.keybinds.opts)

vim.keybinds.gmap("n", "<c-a>", "ggVG_", vim.keybinds.opts)
vim.keybinds.gmap("n", "<c-c>", '"+y', vim.keybinds.opts)
vim.keybinds.gmap("n", "<c-v>", '"+p', vim.keybinds.opts)

--vim.keybinds.gmap("n", "<f6>", "gcc", vim.keybinds.opts)
--vim.keybinds.gmap("n", "<f6>", "<leader>ci", vim.keybinds.opts)
--vim.keybinds.gmap( "<f6>", "<leader>ci", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f1>", ":w<cr>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<f1>", ":<ESC>w<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f3>", ":MRUToggle<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f4>", ":Ex<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<c-<f4>>", ":Vx<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f9>", ":bn<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f10>", ":tabnew<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f2>", ":tabn<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f11>", ":bd<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<f12><f12>", ":qa!<cr>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<cr>", "o<esc>", vim.keybinds.opts)
vim.keybinds.gmap("n", "tt", "o<esc>", vim.keybinds.opts)


require'mapx'.setup{ global = true }

map("<f6>", "gcc")
map("<f5>", "ggVG=")
vim.o.guifont = "FiraCode Nerd Font:h22"
-- vim.o.neovide_transparency = "0.8"

-- vim.cmd('let g:neovide_transparency=0.8')
-- vim.cmd('')
vim.cmd('let g:neovide_cursor_vfx_mode = "sonicboom"')
vim.cmd('let g:neovide_refresh_rate=40')
vim.cmd('let g:neovide_no_idle=v:true')
-- vim.cmd('')
-- vim.cmd('')
vim.cmd('let g:neovide_cursor_trail_length=0.8')
vim.cmd('let g:neovide_cursor_animation_length=0.13')


vim.cmd('let g:XkbSwitchLib = \'C:\\tools\\libxkbswitch64.dll\'')
vim.cmd('let g:XkbSwitchEnabled = 1')
