local status, gruvbox = pcall(require, 'gruvbox')
if not status then return end

gruvbox.setup({
  bold = true,
  italic = {
    strings = false,
    comments = true,
    folds = true,
    operator = true,
  }
})
