return {
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
        keys = {
            { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview: open" },
            { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diffview: close" },
            { "<leader>gv", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview: file history" },
            { "<leader>gV", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview: repo history" },
        },
    },
    {
        "akinsho/git-conflict.nvim",
        version = "*",
        event = "BufReadPre",
        config = true,
        keys = {
            { "<leader>gxo", "<cmd>GitConflictChooseOurs<cr>", desc = "Conflict: ours" },
            { "<leader>gxt", "<cmd>GitConflictChooseTheirs<cr>", desc = "Conflict: theirs" },
            { "<leader>gxb", "<cmd>GitConflictChooseBoth<cr>", desc = "Conflict: both" },
            { "<leader>gxn", "<cmd>GitConflictChooseNone<cr>", desc = "Conflict: none" },
            { "]x", "<cmd>GitConflictNextConflict<cr>", desc = "Next conflict" },
            { "[x", "<cmd>GitConflictPrevConflict<cr>", desc = "Prev conflict" },
        },
    },
    { -- Disable default git-diff command to prevent conflict
        "lewis6991/gitsigns.nvim",
        keys = {
            { "<leader>gd", false },
        },
    },
    { -- fzf-lua also maps <leader>gd and overwrites diffview once it loads
        "ibhagwan/fzf-lua",
        optional = true,
        keys = {
            { "<leader>gd", false },
        },
    },
}
