return {
  "nvim-java/nvim-java",
  config = function()
    local on_attach = function(client, buffer)
      local nmap = function(keys, func, desc)
        if desc then
          desc = "LSP: " .. desc
        end
      end

      -- See `:help K` for why this keymap
      nmap("K", vim.lsp.buf.hover, "Hover Documentation")
      nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

      -- Lesser used LSP functionality
      nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
      nmap("<leader>wa", vim.lsp.buf.add_workspace_folder, "[W]orkspace [A]dd Folder")
      nmap("<leader>wr", vim.lsp.buf.remove_workspace_folder, "[W]orkspace [R]emove Folder")
      nmap("<leader>wl", function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, "[W]orkspace [L]ist Folders")

      -- Diagnostics
      nmap("gl", vim.diagnostic.open_float, "[O]pen [D]iagnostics")
      nmap("[d", vim.diagnostic.goto_prev, "[G]oto [P]revious Diagnostics")
      nmap("]d", vim.diagnostic.goto_next, "[G]oto [N]ext Diagnostics")
    end

    --require("java").setup({})
    --require("mason").setup({})

    -- List of LSP servers to be installed using mason with the help of mason-lspconfig
    local servers = {
      jdtls = {
        settings = {
          java = {
            configuration = {
              runtimes = {
                {
                  name = "Java 22",
                  -- Set this to the path of the JDK installation
                  path = "/usr/lib/jvm",
                  default = true,
                }
              }
            }
          }
        }
      }
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = vim.tbl_keys(servers),
    })
    mason_lspconfig.setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
        })
      end,
    })
  end
}
