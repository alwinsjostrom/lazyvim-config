return {
    {
        "mattn/emmet-vim",
        ft = { "html", "vue", "css", "scss", "less", "javascriptreact", "typescriptreact" },
        init = function()
            vim.g.user_emmet_leader_key = "<C-y>"
        end,
    },
}
