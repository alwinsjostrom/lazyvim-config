return {
    "neovim/nvim-lspconfig",
    opts = {
        -- Disable inlay hints by default (toggle with <leader>uh)
        inlay_hints = { enabled = false },
        servers = {
            -- CSS property/value completion for .css, .scss and .less
            cssls = {
                settings = {
                    css = { lint = { unknownAtRules = "ignore" } },
                    scss = { lint = { unknownAtRules = "ignore" } },
                    less = { lint = { unknownAtRules = "ignore" } },
                },
            },
            -- Emmet abbreviations as LSP completions (e.g. "df" -> "display: flex;")
            emmet_language_server = {
                filetypes = { "css", "scss", "less", "html" },
            },
        },
    },
}
