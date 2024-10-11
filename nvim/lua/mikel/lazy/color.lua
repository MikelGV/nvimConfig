
function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)    
end

return {
    { "ellisonleao/gruvbox.nvim", 
        name = "gruvbox",
        config = function ()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                inver_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "",
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end
    }
}
