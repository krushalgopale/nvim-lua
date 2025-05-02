return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({

			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt", "golines", "gofumpt", "goimports" },
				javascript = { "prettierd" },
        cpp = { "clang-format" }
			},
		})

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format()
		end, { noremap = true, silent = true })
	end,
}
