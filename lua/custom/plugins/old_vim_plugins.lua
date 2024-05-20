return {
	"terryma/vim-multiple-cursors",
	"tpope/vim-surround",
	config = function()
		--Default mapping of vim-multiple-cursors
		vim.cmd("let g:multi_cursor_start_word_key      = '<C-n>'")
		vim.cmd("let g:multi_cursor_select_all_word_key = '<A-n>'")
		vim.cmd("let g:multi_cursor_start_key           = 'g<C-n>'")
		vim.cmd("let g:multi_cursor_select_all_key      = 'g<A-n>'")
		vim.cmd("let g:multi_cursor_next_key            = '<C-n>'")
		vim.cmd("let g:multi_cursor_prev_key            = '<C-p>'")
		vim.cmd("let g:multi_cursor_skip_key            = '<C-x>'")
		vim.cmd("let g:multi_cursor_quit_key            = '<Esc>'")
		--End of vim-multiple-cursors
	end,
}
