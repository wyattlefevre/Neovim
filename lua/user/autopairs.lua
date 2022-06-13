local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

npairs.setup {
  check_ts = true,
  disable_filetype = { "TelescopePrompt" },
  fast_wrap = {
    map = "<C-e>",
  }
}
