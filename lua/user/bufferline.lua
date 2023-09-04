local bufferline = require("bufferline")

bufferline.setup{
	options = {
		style_preset = {
			bufferline.style_preset.minimal,
			bufferline.style_preset.no_bold,
			bufferline.style_preset.no_italic,
		},
		indicator = {
			style = 'none'
		},
		themable = true,
		numbers = "none",
		name_formatter = function(buf)
			return buf.name
		end,
		tab_size = 16,
		color_icons = true,
		show_buffer_icons = true,
		separator_style = {'', ''},
		offsets = {
			{
				filetype = "NvimTree",
				text = "",
				text_align = "left",
				separator = false,
			}
		}
	}
}
