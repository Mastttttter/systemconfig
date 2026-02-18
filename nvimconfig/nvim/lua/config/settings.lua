local default_opts = {
  nerd_fonts = true,
  disable_notify = true,
  transparent_color = false,
  more_cpp_ftdetect = true,
  enable_signature_help = false,
  enable_inlay_hint = true,
  enable_clipboard = false,
  enable_kitty = false,
  wsl2_env = true,
  -- colorscheme = "kanagawa-dragon",
  colorscheme = "tokyonight-night",
}

(function()
  local data_path = vim.fn.stdpath("data") .. "/archvim"
  local file_name = data_path .. "/opts.json"
  local file = io.open(file_name, "r")
  if file then
    local content = file:read("*a")
    file:close()
    local result = vim.fn.json_decode(content)
    for k, v in pairs(result) do
      default_opts[k] = v
    end
  end
end)()

return setmetatable({}, {
  __newindex = function(_, k, v)
    rawset(default_opts, k, v)
    local data_path = vim.fn.stdpath("data") .. "/archvim"
    if vim.fn.isdirectory(data_path) ~= 1 then
      vim.fn.mkdir(data_path, "p")
    end
    local file_name = data_path .. "/opts.json"
    local file = io.open(file_name, "w")
    assert(file, string.format("cannot open file '%s' for write", file_name))
    file:write(vim.fn.json_encode(default_opts))
    file:close()
  end,
  __index = function(_, k)
    return rawget(default_opts, k)
  end,
})
