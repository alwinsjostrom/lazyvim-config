return {
    {
        "L3MON4D3/LuaSnip",
        enabled = true,
        config = function(_, opts)
            require("luasnip").config.setup(opts)

            local ls = require("luasnip")
            local s = ls.snippet
            local i = ls.insert_node
            local f = ls.function_node
            local fmt = require("luasnip.extras.fmt").fmt

            local import_snippet = s("imp", fmt("import {name} from '@components/{folder}/{file}.vue';", {
                name = i(1, "Component"),
                folder = i(2, "Folder"),
                file = f(function(args) return args[1][1] end, { 1 }),
            }))

            ls.add_snippets("vue", { import_snippet })
            ls.add_snippets("typescript", { import_snippet })
            ls.add_snippets("javascript", { import_snippet })
        end,
    },
}
