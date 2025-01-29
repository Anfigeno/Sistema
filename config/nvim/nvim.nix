{ config, pkgs, ... }:

{
  programs.neovim = 
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    configure.customRC = toLuaFile ./options.lua;

    configure.packages.nix.start = with pkgs.vimPlugins; [ 
      

      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
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
        config = toLua "require(\"nvim-autopairs\").setup()";
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
      ]))

      scope-nvim
      {
        plugin = bufferline-nvim;
        config = toLuaFile ./plugins/bufferline.lua;
      }

      {
        plugin = nvim-colorizer-lua;
        config = toLua "require(\"colorizer\").setup()";
      }

      {
        plugin = gitsigns-nvim;
        config = toLuaFile ./plugins/gitsigns.lua;
      }

      {
        plugin = inc-rename-nvim;
        config = toLua "require(\"inc_rename\").setup()";
      }

      {
        plugin = mini-nvim;
        config = toLuaFile ./plugins/mini.lua;
      }
    ];
  };
}