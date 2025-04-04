-- ~/.config/nvim/lua/colors/monochrome_dark.lua

local M = {}

function M.setup()
  vim.cmd 'highlight clear'
  vim.o.background = 'dark'
  vim.g.colors_name = 'monochrome_dark'

  local black = '#333333'
  local gray = '#7A7A7A'
  local white = '#CCCCCC'
  local hl = vim.api.nvim_set_hl

  -- UI
  hl(0, 'Normal', { fg = white, bg = black })
  hl(0, 'NormalNC', { fg = white, bg = black })
  hl(0, 'LineNr', { fg = gray, bg = black })
  hl(0, 'CursorLineNr', { fg = white, bg = black, bold = true })
  hl(0, 'CursorLine', { bg = '#3A3A3A' })
  hl(0, 'CursorColumn', { bg = '#3A3A3A' })
  hl(0, 'ColorColumn', { bg = '#3A3A3A' })
  hl(0, 'Visual', { bg = gray, fg = white })
  hl(0, 'StatusLine', { fg = white, bg = gray })
  hl(0, 'StatusLineNC', { fg = gray, bg = black })
  hl(0, 'VertSplit', { fg = gray })
  hl(0, 'WinSeparator', { fg = gray })
  hl(0, 'Pmenu', { fg = white, bg = '#3A3A3A' })
  hl(0, 'PmenuSel', { fg = black, bg = white })

  -- Syntax
  hl(0, 'Comment', { fg = gray, italic = true })
  hl(0, 'Identifier', { fg = white })
  hl(0, 'Function', { fg = white })
  hl(0, 'Statement', { fg = white, bold = true })
  hl(0, 'Keyword', { fg = white, italic = true })
  hl(0, 'Type', { fg = white })
  hl(0, 'Constant', { fg = white })
  hl(0, 'String', { fg = gray })
  hl(0, 'Number', { fg = gray })
  hl(0, 'Boolean', { fg = gray })
  hl(0, 'Operator', { fg = white })
  hl(0, 'PreProc', { fg = white })
  hl(0, 'Special', { fg = gray })

  -- Diagnostics
  hl(0, 'DiagnosticError', { fg = white })
  hl(0, 'DiagnosticWarn', { fg = gray })
  hl(0, 'DiagnosticInfo', { fg = gray })
  hl(0, 'DiagnosticHint', { fg = gray })

  -- Treesitter
  hl(0, '@comment', { link = 'Comment' })
  hl(0, '@function', { link = 'Function' })
  hl(0, '@keyword', { link = 'Keyword' })
  hl(0, '@string', { link = 'String' })

  -- Cursor
  hl(0, 'Cursor', { fg = black, bg = white })
end

return M
