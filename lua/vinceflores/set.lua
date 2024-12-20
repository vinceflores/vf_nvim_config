
--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile= false
vim.opt.backup= false
vim.opt.undodir= os.getenv("HOME") .. "/vim/undodir"
vim.opt.undofile= true

vim.opt.hlsearch  = false
vim.opt.incsearch =true

vim.opt.termguicolors=true

vim.opt.scrolloff = 10
vim.opt.scrolljump = 10
vim.opt.signcolumn="yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "


-- Function to format with Prettier
local function format_with_prettier()
  local filetype = vim.bo.filetype
  if filetype == "javascript" or filetype == "typescript" or filetype == "json" or filetype == "css" or filetype == "html" then
    local filename = vim.api.nvim_buf_get_name(0)
    vim.fn.system({ "prettier", "--write", filename })
    vim.cmd("edit")  -- Reopen the file to show changes
  end
end

-- Set an autocommand to format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- format_with_prettier()
  end,
})
