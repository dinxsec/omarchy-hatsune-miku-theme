return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#002424",
                bg_dark = "#002424",
                bg_highlight = "#3aadad",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#F5FBFE",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#3aadad",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#D2D5E8",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ffffff",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#79cdc0",
                -- green: Comments, strings, success states, git additions
                green = "#7cbbad",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#6FFBFE",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#5f97f6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#6dadf8",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#c2deff",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
