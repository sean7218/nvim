vim.expandtab = true
vim.opt.isfname:append("@-@")
vim.g.mapleader = " "

local options = {
	wrap = false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,
	termguicolors = true,
	scrolloff = 8,
	signcolumn = "yes",
	updatetime = 50,
	tabstop = 2,
	softtabstop = 2,
	smartindent = true,
	shiftwidth = 2,
	nu = true,
	relativenumber = true,
	hlsearch = false,
	incsearch = true,
	swapfile = false,
	backup = false,
	guifont = "monospace:h17",  -- the font used in graphical neovim applications

}

for k, v in pairs(options) do
	vim.opt[k] = v
end
