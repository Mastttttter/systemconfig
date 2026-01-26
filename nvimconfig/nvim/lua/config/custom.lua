if require("config.settings").more_cpp_ftdetect then
  vim.cmd([[
    augroup archvim_set_filetype
        au! BufRead,BufNewFile *.cppm,*.ixx setfiletype cpp
        au! BufRead,BufNewFile *.vert,*.frag,*.comp,*.geom,*.tess setfiletype glsl
    augroup end
    ]])
end
-- if require("config.settings").transparent_color then
--   vim.cmd([[
--     augroup colorscheme_mock
--     autocmd!
--     autocmd ColorScheme * hi Normal guibg=none | hi def link LspInlayHint Comment
--         " \ | hi LspReferenceText guibg=none
--         " \ | hi LspReferenceRead guibg=none
--         " \ | hi LspReferenceWrite guibg=none
--     " hi NormalFloat guifg=#928374 guibg=#282828 |
--     " hi WinSeparator guibg=none |
--     " hi TreesitterContext gui=NONE guibg=#282828 |
--     " hi TreesitterContextBottom gui=underline guisp=Grey
--     augroup END
--     ]])
-- end
if require("config.settings").wsl2_env then
  vim.cmd([[
        " this is for wsl 
 let g:clipboard = {
     \ 'name': 'WslClipboard',
     \ 'copy': {
     \   '+': 'clip.exe',
     \   '*': 'clip.exe',
     \ },
     \ 'paste': {
     \   '+': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))', 
     \   '*': 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
     \ },
     \   'cache_enabled': 0,
     \ }
    ]])
end

if not require("config.settings").enable_clipboard then
  vim.cmd([[
        set clipboard-=unnamedplus
    ]])
end

-- if vim.g.vscode then
--   vim.g.clipboard = vim.g.vscode_clipboard
-- end

-- More custom options goes here
