-- import gitsigns plugin safely
local setup, markdown = pcall(require, "markdown-preview")
if not setup then
	return
end

-- configure/enable gitsigns
markdown.setup()
