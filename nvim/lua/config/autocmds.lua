vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function(args)
        local clients = vim.lsp.get_clients({
            bufnr = args.buf,
        })
        local lsp_formatting = false
        for _, client in ipairs(clients) do
            if client:supports_method("textDocument/formatting") then
                lsp_formatting = true
            end
        end

        if lsp_formatting then
            vim.lsp.buf.format({
                bufnr = args.buf,
                async = false,
            })
        else
            vim.cmd("normal! gg=G")
        end
    end,
})


vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(
                true,
                client.id,
                args.buf,
                {
                    autotrigger = true,
                }
            )
        end
    end,
})
