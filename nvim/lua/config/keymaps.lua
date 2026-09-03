vim.keymap.set("i", "<C-Space>", function()
    vim.lsp.completion.get()
end)

vim.keymap.set("i", "<Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-n>"
    end

    return "<Tab>"
end, {
    expr = true,
})

vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-p>"
    end

    return "<S-Tab>"
end, {
    expr = true,
})

vim.keymap.set({ "i", "v" }, "jk", "<Esc>")

vim.keymap.set({ "i", "v" }, "kj", "<Esc>")


vim.keymap.set("n", "\\", "<cmd>Neotree toggle<CR>", {
    desc = "Toggle Neo-tree",
    nowait = true,
    noremap = true,
    silent = true,
})
