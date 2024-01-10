return {
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opt)
      opt.current_line_blame = true
      opt.current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 200,
        ignore_whitespace = false,
        relative_time = true,
      }
      opt.current_line_blame_formatter_opts = {
        relative_time = true,
      }

      -- opt.current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>"
      opt.sign_priority = 0
    end,
  },
}
