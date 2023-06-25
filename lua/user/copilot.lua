vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.g.copilot_filetypes = {
	["*"] = false,
	["javascript"] = false,
	["typescript"] = false,
	["lua"] = false,
	["rust"] = false,
	["c"] = false,
	["c#"] = true,
	["c++"] = false,
	["cpp"] = false,
	["cmake"] = true,
	["bzl"] = true,
	["go"] = true,
	["python"] = true,
	["swift"] = false,
	["md"] = false
}

