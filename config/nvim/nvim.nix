{
  config,
  pkgs,
  inputs,
  ...
}:

{
  nixpkgs = {
    overlays = [
      (final: prev: {
        vimPlugins = prev.vimPlugins // {
          own-hlchunk-nvim = prev.vimUtils.buildVimPlugin {
            name = "halchunk";
            src = inputs.plugin-hlchunk-nvim;
          };

          own-modes-nvim = prev.vimUtils.buildVimPlugin {
            name = "modes";
            src = inputs.plugin-modes-nvim;
          };

          own-workspaces-nvim = prev.vimUtils.buildVimPlugin {
            name = "workspaces";
            src = inputs.plugin-workspaces-nvim;
          };

          own-mestizo-nvim = prev.vimUtils.buildVimPlugin {
            name = "mestizo";
            src = inputs.plugin-mestizo-nvim;
          };

          own-kulala-nvim = prev.vimUtils.buildVimPlugin {
            name = "kulala";
            src = inputs.plugin-kulala-nvim;
          };
        };
      })
    ];
  };

  programs.neovim =
    let
      toLua = str: ''
        lua << EOF
        ${str}
        EOF
      '';
      toLuaFile = file: ''
        lua << EOF
        ${builtins.readFile file}
        EOF
      '';
    in
    {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;

      configure.customRC = toLuaFile ./options.lua;

      configure.packages.nix.start = with pkgs.vimPlugins; [
        {
          plugin = trouble-nvim;
          config = toLua ''require("trouble").setup{}'';
        }

        {
          plugin = tiny-inline-diagnostic-nvim;
          config = toLuaFile ./plugins/tiny-inline-diagnostic.lua;
        }

        {
          plugin = own-kulala-nvim;
          config = toLuaFile ./plugins/kulala.lua;
        }

        {
          plugin = lualine-nvim;
          config = toLuaFile ./plugins/lualine.lua;
        }

        {
          plugin = copilot-lua;
          config = toLua ''require("copilot").setup({})'';
        }

        {
          plugin = tabout-nvim;
          config = toLuaFile ./plugins/tabout.lua;
        }

        {
          plugin = hover-nvim;
          config = toLuaFile ./plugins/hover.lua;
        }

        {
          plugin = nvim-notify;
          config = toLuaFile ./plugins/notify.lua;
        }

        {
          plugin = own-workspaces-nvim;
          config = toLuaFile ./plugins/workspaces.lua;
        }

        {
          plugin = todo-comments-nvim;
          config = toLuaFile ./plugins/todo-comments.lua;
        }

        {
          plugin = stay-centered-nvim;
          config = toLua ''require("stay-centered").setup()'';
        }

        {
          plugin = dashboard-nvim;
          config = toLuaFile ./plugins/dashboard.lua;
        }

        {
          plugin = satellite-nvim;
          config = toLuaFile ./plugins/satellite.lua;
        }

        {
          plugin = own-mestizo-nvim;
          config = "colorscheme mestizo";
        }

        {
          plugin = nvim-lspconfig;
          config = toLuaFile ./lsp.lua;
        }

        cmp-nvim-lsp
        cmp-buffer
        cmp-path
        cmp-cmdline
        cmp_luasnip
        lspkind-nvim
        luasnip
        friendly-snippets
        {
          plugin = nvim-autopairs;
          config = toLuaFile ./plugins/autopairs.lua;
        }
        {
          plugin = nvim-cmp;
          config = toLuaFile ./plugins/cmp.lua;
        }

        (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-lua
          p.tree-sitter-python
          p.tree-sitter-php
          p.tree-sitter-go
          p.tree-sitter-rust
          p.tree-sitter-ruby
          p.tree-sitter-json
          p.tree-sitter-markdown
          p.tree-sitter-svelte
          p.tree-sitter-typescript
          p.tree-sitter-tsx
          p.tree-sitter-javascript
          p.tree-sitter-jsdoc
          p.tree-sitter-bash
          p.tree-sitter-fish
          p.tree-sitter-prisma
          p.tree-sitter-http
        ]))

        {
          plugin = nvim-treesitter;
          config = toLuaFile ./plugins/treesitter.lua;
        }

        scope-nvim
        {
          plugin = bufferline-nvim;
          config = toLuaFile ./plugins/bufferline.lua;
        }

        {
          plugin = nvim-colorizer-lua;
          config = toLua ''require("colorizer").setup()'';
        }

        {
          plugin = gitsigns-nvim;
          config = toLuaFile ./plugins/gitsigns.lua;
        }

        {
          plugin = inc-rename-nvim;
          config = toLua ''require("inc_rename").setup()'';
        }

        {
          plugin = mini-nvim;
          config = toLuaFile ./plugins/mini.lua;
        }

        {
          plugin = own-hlchunk-nvim;
          config = toLuaFile ./plugins/hlchunk.lua;
        }

        {
          plugin = own-modes-nvim;
          config = toLuaFile ./plugins/modes.lua;
        }

        {
          plugin = rainbow-delimiters-nvim;
          config = toLuaFile ./plugins/rainbow-delimiters.lua;
        }

        plenary-nvim
        {
          plugin = telescope-nvim;
          config = toLuaFile ./plugins/telescope.lua;
        }

        nvim-web-devicons
        nui-nvim
        {
          plugin = neo-tree-nvim;
          config = toLuaFile ./plugins/neotree.lua;
        }

        {
          plugin = edgy-nvim;
          config = toLuaFile ./plugins/edgy.lua;
        }

        {
          plugin = toggleterm-nvim;
          config = toLuaFile ./plugins/toggleterm.lua;
        }

        {
          plugin = neoformat;
          config = toLuaFile ./plugins/neoformat.lua;
        }

        {
          plugin = neocord;
          config = toLua ''require("neocord").setup()'';
        }

        {
          plugin = noice-nvim;
          config = toLuaFile ./plugins/noice.lua;
        }
      ];
    };
}
