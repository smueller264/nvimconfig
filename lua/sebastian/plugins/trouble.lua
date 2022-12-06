-- import gitsigns plugin safely
local setup, trouble = pcall(require, "trouble")
if not setup then
	return
end

-- configure/enable gitsigns
trouble.setup({
	use_diagnostic_signs = true,
})
