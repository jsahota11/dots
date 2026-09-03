vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git" },
})

vim.lsp.config("clangd", {
    cmd = { "clangd" },
    filetypes = { "c", "cpp" },
    root_markers = {
        "compile_commands.json",
        ".git",
    },
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
})
