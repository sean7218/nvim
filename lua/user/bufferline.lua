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
		themable = false,
		numbers = "none",
		name_formatter = function(buf)
			return buf.name
		end,
		show_buffer_icons = true,
		get_element_icon = function(element)
			local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
			return icon, hl
		end,
		tab_size = 20,
		color_icons = true,
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

function close_all_buffers ()
	for _, e in ipairs(bufferline.get_elements().elements) do
		vim.schedule(function()
			vim.cmd("bd ".. e.id)
		end)
	end
end

