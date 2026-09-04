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

vim.lsp.config("html", {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    root_markers = {
        "package.json",
        ".git",
    },
})

vim.lsp.config("cssls", {
    cmd = { "vscode-css-language-server", "--stdio" },
    filetypes = { "css" },
    root_markers = {
        "package.json",
        ".git",
    },
})

vim.lsp.config("ts_ls", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "typescript",
        "typescriptreact",
    },
    root_markers = {
        "tsconfig.json",
        "package.json",
        ".git",
    },
})

vim.lsp.config("jsonls", {
    cmd = { "vscode-json-language-server", "--stdio" },
    filetypes = { "json", "jsonc" },
    root_markers = { "package.json", ".git" },
})

vim.lsp.config("astro", {
    cmd = { "astro-ls", "--stdio" },
    filetypes = { "astro" },
    root_markers = {
        "astro.config.mjs",
        "astro.config.ts",
        "package.json",
        ".git",
    },
})

vim.lsp.config("texlab", {
    cmd = { "texlab" },
    filetypes = { "tex", "bib" },
    root_markers = { ".git" },
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "ts_ls",
    "astro",
    "html",
    "cssls",
    "jsonls",
    "texlab"
})
