-- import gitsigns plugin safely
local setup, fluttertools = pcall(require, "flutter-tools")
if not setup then
	return
end

local custom_config = require("sebastian.plugins.lsp.lspconfig")

-- configure/enable gitsigns
fluttertools.setup({
	lsp = {
		color = { enabled = true },
		on_attach = custom_config.on_attach,
		capabilities = custom_config.capabilities,
		flags = custom_config.flags,
		handlers = custom_config.handlers,
		settings = {
			showTodos = false,
			completeFunctionCalls = true,
			renameFilesWithClasses = "prompt",
			enableSnippets = true,
		},
	},
})
