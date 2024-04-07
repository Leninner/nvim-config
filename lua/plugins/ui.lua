return {
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = "#2E3440", guifg = "#D8DEE9" },
            InclineNormalNC = { guibg = "#2E3440", guifg = "#4C566A" },
          },
        },
        window = {
          margin = { vertical = 0, horizontal = 1 },
        },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[  
██╗     ███████╗███╗   ██╗██╗███╗   ██╗███╗   ██╗███████╗██████╗ 
██║     ██╔════╝████╗  ██║██║████╗  ██║████╗  ██║██╔════╝██╔══██╗
██║     █████╗  ██╔██╗ ██║██║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
██║     ██╔══╝  ██║╚██╗██║██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
███████╗███████╗██║ ╚████║██║██║ ╚████║██║ ╚████║███████╗██║  ██║
╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      require("dashboard").setup()
    end,
  },
}
