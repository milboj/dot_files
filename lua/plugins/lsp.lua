return {
  "williamboman/mason-lspconfig.nvim",
  config = function(_, opts)
    local vue_language_server_path = "/path/to/@vue/language-server"

    local lspconfig = require("lspconfig")

    lspconfig.tsserver.setup({
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vue_language_server_path,
            languages = { "vue" },
          },
        },
      },
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
    })

    -- No need to set `hybridMode` to `true` as it's the default value
    lspconfig.volar.setup({})
  end,
}
