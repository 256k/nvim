local status_ok, configs = pcall(require,"nvim-treesitter.configs")
if not status_ok then
  return
end
configs.setup {
  ensure_installed = {"python", "javascript", "rust", "typescript", "cpp", "commonlisp", "html", "css", "scss", "c", "lua", "vim", "help" },
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
  },
 indent = { enable = true, disable = { "yaml" } },
}
