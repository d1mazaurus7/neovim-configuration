 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#101418',
    base01 = '#1c2024',
    base02 = '#272a2e',
    base03 = '#8c9198',
    base04 = '#c2c7ce',
    base05 = '#e0e2e8',
    base06 = '#e0e2e8',
    base07 = '#e0e2e8',
    base08 = '#ffb4ab',
    base09 = '#d1bfe7',
    base0A = '#b8c8da',
    base0B = '#99ccfa',
    base0C = '#d1bfe7',
    base0D = '#99ccfa',
    base0E = '#b8c8da',
    base0F = '#d4e4f6',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e0e2e8',             bg = '#101418' })
  hi('TelescopeBorder',         { fg = '#8c9198',             bg = '#101418' })
  hi('TelescopePromptNormal',   { fg = '#e0e2e8',             bg = '#101418' })
  hi('TelescopePromptBorder',   { fg = '#8c9198',             bg = '#101418' })
  hi('TelescopePromptPrefix',   { fg = '#99ccfa',             bg = '#101418' })
  hi('TelescopePromptCounter',  { fg = '#c2c7ce',             bg = '#101418' })
  hi('TelescopePromptTitle',    { fg = '#101418',             bg = '#99ccfa' })
  hi('TelescopePreviewTitle',   { fg = '#101418',             bg = '#b8c8da' })
  hi('TelescopeResultsTitle',   { fg = '#101418',             bg = '#d1bfe7' })
  hi('TelescopeSelection',      { fg = '#e0e2e8',             bg = '#272a2e' })
  hi('TelescopeSelectionCaret', { fg = '#99ccfa',             bg = '#272a2e' })
  hi('TelescopeMatching',       { fg = '#99ccfa',             bold = true })

  hi('MiniPickNormal',          { fg = '#e0e2e8',             bg = '#101418' })
  hi('MiniPickBorder',          { fg = '#8c9198',             bg = '#101418' })
  hi('MiniPickPrompt',          { fg = '#e0e2e8',             bg = '#101418' })
  hi('MiniPickPromptPrefix',    { fg = '#99ccfa',             bg = '#101418' })
  hi('MiniPickBorderText',      { fg = '#101418',             bg = '#99ccfa' })
  hi('MiniPickMatchCurrent',    { fg = '#e0e2e8',             bg = '#272a2e' })
  hi('MiniPickPromptCaret',     { fg = '#99ccfa',             bg = '#272a2e' })
  hi('MiniPickMatchRanges',     { fg = '#99ccfa',             bold = true })
end

if _G.__matugen_signal then
  _G.__matugen_signal:stop()
  _G.__matugen_signal:close()
end

local signal = vim.uv.new_signal()
_G.__matugen_signal = signal
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
