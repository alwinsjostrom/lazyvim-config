return {
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
        keys = {
            { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview: open" },
            { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diffview: close" },
            { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview: file history" },
            { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview: repo history" },
        },
    },
    {
        "akinsho/git-conflict.nvim",
        version = "*",
        event = "BufReadPre",
        config = true,
        keys = {
            { "<leader>gco", "<cmd>GitConflictChooseOurs<cr>", desc = "Conflict: ours" },
            { "<leader>gct", "<cmd>GitConflictChooseTheirs<cr>", desc = "Conflict: theirs" },
            { "<leader>gcb", "<cmd>GitConflictChooseBoth<cr>", desc = "Conflict: both" },
            { "<leader>gcn", "<cmd>GitConflictChooseNone<cr>", desc = "Conflict: none" },
            { "]x", "<cmd>GitConflictNextConflict<cr>", desc = "Next conflict" },
            { "[x", "<cmd>GitConflictPrevConflict<cr>", desc = "Prev conflict" },
        },
    },
}
