return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "astro",
            "c_sharp",
            "css",
            "html",
            "javascript",
            "json",
            "lua",
            "tsx",
            "typescript",
        })

        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("w1nston_treesitter", {}),
            callback = function(event)
                pcall(vim.treesitter.start, event.buf)
            end,
        })
    end,
}
