{ inputs, config, pkgs, ... }:

{
  programs.nvf = {
    enable = true;
    settings = {
      # Opciones varias
      vim.viAlias = false;
      vim.vimAlias = true;
      vim.lsp.enable = true;

      # Tema
      vim.theme.enable = true;  
      vim.theme.style = "dark";
      vim.theme.name = "gruvbox";

      # LSP y sus vainas
      vim.lsp.lspkind.enable = true;
      vim.languages.enableLSP = true;
      vim.languages.enableTreesitter = true;
      vim.languages.ts.enable = true;
      vim.languages.go.enable = true;
      vim.languages.lua.enable = true;
      vim.languages.python.enable = true;
      vim.languages.rust.enable = true;
      vim.languages.nix.enable = true;
      vim.languages.php.enable = true;
      vim.languages.html.enable = true;
      vim.languages.css.enable = true;
      vim.snippets.luasnip.enable = true;

      vim.statusline.lualine.enable = true;
      vim.autocomplete.nvim-cmp.enable = true;
      vim.autopairs.nvim-autopairs.enable = true;
      vim.dashboard.dashboard-nvim.enable = true;
      vim.filetree.nvimTree.enable = true;
      vim.git.gitsigns.enable = true;
      vim.mini.move.enable = true;
      vim.mini.surround.enable = true;
      vim.minimap.codewindow.enable = true;
      vim.notes.todo-comments.enable= true;
      vim.presence.neocord.enable= true;
      vim.terminal.toggleterm.enable = true;
      vim.telescope.enable = true;
      vim.ui.noice.enable = true;
      vim.ui.colorizer.enable = true;
      vim.ui.modes-nvim.enable = true;
      vim.notify.nvim-notify.enable = true;
      vim.visuals.nvim-web-devicons.enable = true;
      vim.visuals.rainbow-delimiters.enable = true;

      # Pugins extras
      vim.extraPlugins = with pkgs.vimPlugins; {

      };
    };
  };
}
