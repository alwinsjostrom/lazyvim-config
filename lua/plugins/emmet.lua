return {
    {
        "mattn/emmet-vim",
        -- html/css/scss/less are covered by emmet_language_server (see lsp.lua)
        ft = { "vue", "javascriptreact", "typescriptreact" },
        init = function()
            vim.g.user_emmet_leader_key = "<C-y>"
        end,
    },
}
