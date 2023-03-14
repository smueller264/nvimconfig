-- import gitsigns plugin safely
local setup, go = pcall(require, "go")
if not setup then
	return
end

local custom_config = require("sebastian.plugins.lsp.lspconfig")

go.setup({
	lsp_cfg = {
		on_attach = custom_config.on_attach,
		capabilities = custom_config.capabilities,
		flags = custom_config.flags,
		handlers = custom_config.handlers,
		settings = {
			showTodos = false,
			completeFunctionCalls = true,
			renameFilesWithClasses = "prompt",
			enableSnippets = false,
		},
	},
})
