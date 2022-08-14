local colorscheme = "gruvbox-material"

-- Error out if theme is not installed.
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
