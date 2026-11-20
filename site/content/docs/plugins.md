+++
title = "Plugins"
+++

This configuration uses [`lazy.nvim`](https://github.com/folke/lazy.nvim) to manage the plugins below. They are installed automatically on the first launch; run `:Lazy` to inspect them and `:Lazy update` to update.

## Completion Engine

Autocompletion powered by `nvim-cmp` with multiple sources for context-aware suggestions.

| Plugin | Description |
| --- | --- |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Main completion engine that provides intelligent autocompletion |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP source for nvim-cmp, enables IDE-style completions from language servers |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | Suggests words and identifiers from open buffers |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | Autocompletes file system paths and directory structures |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | Integrates Luasnip snippets into the completion menu |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine with support for Lua-based snippet definitions |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Pre-built snippet collection for many programming languages |

## Language Server Protocol (LSP)

Full LSP integration for code intelligence including diagnostics, hover info, go-to-definition, and more.

| Plugin | Description |
| --- | --- |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Pre-configured setups for common language servers |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | Displays LSP progress indicators in a small unobtrusive window |

## UI & Aesthetics

Visual enhancements that make Neovim look and feel modern.

| Plugin | Description |
| --- | --- |
| [neovim-ayu](https://github.com/shatur/neovim-ayu) | `ayu-dark` colorscheme used as the default theme |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Global statusline using the matching `ayu` theme |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Start dashboard with file, project, and keymap shortcuts |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Tab-like buffer line at the top of the window for easy navigation between open files |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | Modern file explorer with a tree view, git integration, and file operations (v3.x branch) |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI component library used by other plugins (dependency) |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons for the statusline and file explorer (dependency) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Displays vertical guides to visualize indentation levels |
| [mini.indentscope](https://github.com/nvim-mini/mini.indentscope) | Highlights the indent scope of the current cursor position |
| [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) | Shows actual color previews for hex codes, CSS variables, and color names |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Renders markdown files with formatted headings, lists, checkboxes, and code blocks |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Toggleable horizontal terminal |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlights TODO comments and related keywords |
| [cord.nvim](https://github.com/vyfor/cord.nvim) | Discord Rich Presence integration |

## Version Control (Git)

Git integration for tracking changes and managing repositories without leaving Neovim.

| Plugin | Description |
| --- | --- |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Shows git diff hunks in the sign gutter with inline blame preview and hunk actions |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | Opens the Lazygit TUI inside a Neovim floating window for full git management |

## Editing Utilities

Tools that streamline everyday editing tasks.

| Plugin | Description |
| --- | --- |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Tree-sitter based syntax highlighting and indentation; parsers are updated with `:TSUpdate` |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Automatically inserts closing pairs like brackets, quotes, and parentheses |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Uses Tree-sitter to auto-close and auto-rename HTML/XML/JSX tags |
| [code_runner.nvim](https://github.com/CRAG666/code_runner.nvim) | Run code directly from Neovim with language-aware commands |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utility library used by Telescope and Neo-tree (dependency) |

## Fuzzy Finding

| Plugin | Description |
| --- | --- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, buffers, text, and keymaps |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Routes `vim.ui.select` prompts through a Telescope dropdown |

## Live Server

| Plugin | Description |
| --- | --- |
| [live-server.nvim](https://forge.barrettruth.com/barrettruth/live-server.nvim.git) | Runs a live-reloading server for web projects on `127.0.0.1:8080` |
