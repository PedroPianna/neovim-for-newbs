return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree toggle right<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = false, -- false = hide hidden files by default
                    show_hidden_count = true,
                    hide_dotfiles = true,
                    hide_gitignored = true,
                },
                window = {
                    mappings = {
                        ["H"] = "toggle_hidden", -- press H in the Neo-tree window to toggle hidden files
                    },
                },
            },
        })
	end,
}
