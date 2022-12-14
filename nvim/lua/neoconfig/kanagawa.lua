local ok, kanagawa = pcall(require, "kanagawa")
if ok then
	kanagawa.setup({
		undercurl = true,
		commentStyle = { italic = true },
		functionStyle = { italic = true },
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		variablebuiltinStyle = { italic = true },
		specialReturn = true,
		specialException = true,
		transparent = true,
		dimInactive = false,
		globalStatus = false,
		terminalColors = true,
		colors = {},
		overrides = {},
		theme = "default",
	})
end
