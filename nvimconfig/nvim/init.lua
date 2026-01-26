require("config.lazy")

function print(...)
  vim.notify(vim.inspect({ ... }))
end
