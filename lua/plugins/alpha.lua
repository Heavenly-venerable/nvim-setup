return { 
  "goolord/alpha-nvim",                                      opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.buttons.val = {
      opts.button("n", "File Browser", ':Telescope file_browser path=%:p:h<CR>'),
      opts.button("f", "Find File in Current Directory", ':Telescope find_files<CR>'),
      opts.button("c", "Config", ':Telescope file_browser path=~/.config/nvim/<CR>'),
      opts.button("r", "Recent", ':Telescope oldfiles<CR>'),
      opts.button("q", "Quit", ':q<CR>'),
    }
  end,
}
