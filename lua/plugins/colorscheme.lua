return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
	-- Optionally configure and load the colorscheme
	-- directly inside the plugin declaration.
	vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_enable_bold = true
	vim.g.gruvbox_material_background = 'medium' -- 'hard', 'medium', 'soft'
    -- | Defauft = 'medium'
	vim.g.gruvbox_material_foreground = 'material' -- 'material', 'mix', 'original' 
    -- | Defauft = 'material'
	vim.g.gruvbox_material_cursor = 'auto' -- `'auto'`, `'red'`, `'orange'`,
    --`'yellow'`, `'green'`, `'aqua'`, `'blue'`, `'purple'` | Df = 'auto'
	vim.g.gruvbox_material_transparent_background = 0 --`0`, `1`, `2` | df = 0
	vim.g.gruvbox_material_dim_inactive_windows = 0 --`0`, `1` | df = 0
	vim.g.gruvbox_material_visual = 'grey background' -- `'grey background'`, 
    --`'green background'`, `'blue background'`, `'red background'`, `'reverse'`
	-- | df = `'grey background'`
	vim.g.gruvbox_material_menu_selection_background = 'grey' -- `'grey'`, 
    --`'red'`, `'orange'`, `'yellow'`, `'green'`, `'aqua'`, `'blue'`, `'purple'` 
    --| df = `'grey'`
	vim.g.gruvbox_material_sign_column_background = 'none' -- `'none'`, `'grey'` 
    --| df = `'none'`
	vim.g.gruvbox_material_spell_foreground = 'none' -- `'none'`, `'colored'` 
    --| df = `'none'`
	vim.g.gruvbox_material_ui_contrast = 'low' -- `'low'`, `'high'` | df = `'low'`
	vim.g.gruvbox_material_show_eob = '1' -- `1`, `0` | df = '1'
	vim.g.gruvbox_material_float_style = 'bright' -- `'bright'`, `'dim'` | `'bright'`
	vim.g.gruvbox_material_diagnostic_text_highlight = '0' -- `0`, `1` | 0
	vim.g.gruvbox_material_diagnostic_line_highlight = '0' -- `0`, `1` | 0
	vim.g.gruvbox_material_diagnostic_virtual_text = 'grey' -- `'grey'`, 
    --`'colored'`, `'highlighted'` | grey
	vim.g.gruvbox_material_current_word = 'grey background' -- `'grey background'`, 
    --`'high contrast background'`, `'bold'`, `'underline'`, `'italic'` 
	-- |default = `'grey background'` when not in transparent mode, `'bold'`
	vim.g.gruvbox_material_inlay_hints_background = 'none' -- `'none'`, 
    --`'dimmed'` | none
	vim.g.gruvbox_material_disable_terminal_colors = '0' -- `0`, `1` | 0
	vim.g.gruvbox_material_statusline_style = 'default' -- `'default'`, 
    --`'mix'`, `'original'` | default
	vim.g.gruvbox_material_better_performance = '0' -- `0`, `1` | 0
	vim.cmd.colorscheme('gruvbox-material')
   end
}
