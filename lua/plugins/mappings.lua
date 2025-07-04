return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          ["<Leader>b"] = { desc = "Buffers" },
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["<C-a>"] = { "gg<S-v>G", desc = "Select All" },  -- change description but the same command
          ["<Leader>qqa"] = { ":wqa", desc = "Select All" },  -- change description but the same command
          ["<Leader><Leader>"] = { ":Telescope file_browser path=%:p:h select_buffer=true<CR>", desc = "Find file in current path" },
          ["<Leader>r"] = { desc = "Buffers" },
          ["<Leader>rn"] = { ":%s/", desc = "Find and Replace" },
          ["<Leader>rg"] = { ":Telescope live_grep<cr>", desc = "Live Grep" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
