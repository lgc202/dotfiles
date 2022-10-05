-- 基础设置
require('basic')
-- 插件安装
require('plugin')
-- 主题设置
require("colorscheme")

-- 代码高亮插件
require('plugin-config.nvim-treesitter')
-- 自动补全括号、引号等
require('plugin-config.nvim-autopairs')
-- 目录树插件
require('plugin-config.nvim-tree')
-- 顶部标签栏
require("plugin-config.bufferline")
-- 底部信息栏
require("plugin-config.lualine")
-- 查找文件、内容
require("plugin-config.telescope")

-- 内置LSP
-- 安装language server
require('lsp.setup')
-- 自动补全
require('lsp.cmp')
-- 自动补全美化
require('lsp.ui')
-- 自动代码格式化
require("lsp.null-ls")
