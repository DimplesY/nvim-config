return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = function()
      local transparent_background = true
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        no_bold = true,
        custom_highlights = function(colors)
          local macchiato = require("catppuccin.palettes").get_palette("macchiato")

          return {
            Visual = { bg = colors.surface1 },
            CursorLine = { bg = macchiato.crust },
            CursorIM = {
              bg = colors.sky,
              fg = colors.sky,
            },
          }
        end,
        transparent_background = transparent_background, -- disables setting the background color.

        integrations = {
          aerial = true,
          alpha = true,
          cmp = true,
          dashboard = true,
          flash = true,
          gitsigns = true,
          headlines = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          leap = true,
          lsp_trouble = true,
          mason = true,
          markdown = true,
          mini = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          semantic_tokens = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          which_key = true,
        },
      })
    end,
  },
}
