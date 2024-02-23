local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
  vim.keymap.set("n", "<C-n>", api.tree.toggle, { desc = "Toggle NvimTree" })
  vim.keymap.set("n", "<leader>e", api.tree.open, { desc = "Focus NvimTree", noremap = true })
  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        on_attach = my_on_attach,
        sort = {
          sorter = "case_sensitive",
        },
        update_focused_file = { enable = true },
        view = {
          width = 40,
          side = "right",
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end,
  },
}
