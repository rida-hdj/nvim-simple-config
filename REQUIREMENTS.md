# Neovim Environment Requirements

This document contains all requirements to run this Neovim configuration (`nvim-simple-config`) with zero errors.

---

## 1. Core Requirements

| Requirement | Version | Notes |
|-------------|---------|-------|
| **Neovim** | >= 0.10.0 | Required for `vim.lsp.config` and `vim.lsp.enable` APIs |
| **Package Manager** | lazy.nvim | Already included in `lua/config/lazy.lua` (auto-installed on first run) |

### First-Time Setup
```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim_backup

# Clone this configuration
git clone --depth 1 https://github.com/rida-hdj/nvim-simple-config.git ~/.config/nvim

# Open Neovim (lazy.nvim will auto-install plugins)
nvim
```

---

## 2. System Dependencies

### Essential Tools

| Package | Why Needed | Required By |
|---------|------------|-------------|
| **git** | Cloning plugin repositories, lazy.nvim installation | lazy.nvim, all plugins |
| **curl** | Downloading remote resources | Some plugins may fetch data |
| **unzip** | Extracting plugin archives | Various plugins |

### Compilers & Build Tools

| Package | Why Needed | Required By |
|---------|------------|-------------|
| **gcc** (or g++) | Building C/C++ extensions, compiling code | clangd LSP, code_runner.nvim |
| **make** | Building native modules | nvim-treesitter |
| **cmake** | Building some native plugins | nvim-treesitter (rare) |

### CLI Utilities (Highly Recommended)

| Package | Why Needed | Required By |
|---------|------------|-------------|
| **fd** | Fast file finding (required for Telescope) | telescope.nvim (find_files) |
| **ripgrep** (rg) | Text searching | telescope.nvim (live_grep) |
| **tree** | Directory tree display | Optional |

### Runtimes

| Runtime | Version | Why Needed | Required By |
|---------|---------|------------|-------------|
| **Node.js** | >= 18.0 | JavaScript/TypeScript LSP support | ts_ls, nvim-treesitter (some parsers) |
| **Python3** | >= 3.8 | Python LSP support, code execution | pyright, code_runner.nvim |
| **Rust** | Latest stable | Rust LSP and cargo | rust_analyzer |
| **Go** | >= 1.18 | Go LSP support (optional) | gopls (not configured, but compatible) |

### Additional Tools

| Package | Why Needed | Required By |
|---------|------------|-------------|
| **lazygit** | Git UI integration | lazygit.nvim |
| **xdg-open** | Opening files in browser | code_runner.nvim (HTML files) |

---

## 3. LSP Requirements

All LSP servers must be installed separately. This configuration uses `nvim-lspconfig` which does NOT include the servers themselves.

### Configured Language Servers

| Server | Language | Installation Method | Required Runtime |
|--------|----------|---------------------|------------------|
| **html** | HTML | Built-in (nvim-lspconfig) | None (uses VSCode HTML language server internally) |
| **cssls** | CSS/SCSS/Less | Built-in | None |
| **ts_ls** | JavaScript/TypeScript | `npm install -g typescript typescript-language-server` | Node.js |
| **lua_ls** | Lua | `npm install -g lua-language-server` OR `luarocks install lua-language-server` | Node.js or LuaRocks |
| **pyright** | Python | `npm install -g pyright` | Node.js |
| **rust_analyzer** | Rust | `rustup component add rust-analyzer` | Rust/Cargo |
| **clangd** | C/C++ | `sudo apt install clangd` or via LLVM | - |
| **nil_ls** | Nix | `nix-env -iA nixpkgs.nil` or download from releases | Nix |

### LSP Installation Commands

```bash
# Install all LSP servers at once
npm install -g \
    typescript \
    typescript-language-server \
    pyright \
    lua-language-server

# Rust analyzer
rustup component add rust-analyzer

# For clangd (Debian/Ubuntu)
sudo apt install clangd

# For nil_ls (Nix)
nix-env -iA nixpkgs.nil
```

---

## 4. Treesitter Requirements

### Treesitter CLI

| Requirement | Why Needed | Installation |
|-------------|------------|---------------|
| **tree-sitter CLI** | Compiling Treesitter parsers | Usually bundled with nvim-treesitter, but may need system installation for manual builds |

### Required Parsers

The configuration installs these parsers automatically via `:TSUpdate` (runs on plugin load if not present):

```
c, cpp, rust, asm,
bash, ini, toml, json,
nix,
html, css, javascript, typescript,
yaml, markdown, markdown_inline,
lua, vim, query
```

### Build Dependencies for Parsers

| Parser | Build Tools Needed |
|--------|-------------------|
| C/C++ | gcc, make |
| Rust | rustc, cargo |
| All others | Usually pre-built or auto-compiled |

**Note:** On first Neovim launch, Treesitter will compile parsers. Ensure `gcc` and `make` are available.

---

## 5. Plugin-Specific Dependencies

### Plugin List

| Plugin | Version | External Dependencies | Optional Dependencies |
|--------|---------|----------------------|----------------------|
| **folke/lazy.nvim** | stable | git | - |
| **neovim/nvim-lspconfig** | master | LSP servers (see section 3) | - |
| **hrsh7th/nvim-cmp** | main | None | cmp-nvim-lsp, cmp-path, LuaSnip |
| **hrsh7th/cmp-nvim-lsp** | main | nvim-lspconfig | - |
| **hrsh7th/cmp-path** | main | None | - |
| **L3MON4D3/LuaSnip** | master | None | friendly-snippets |
| **rafamadriz/friendly-snippets** | main | None | - |
| **windwp/nvim-ts-autotag** | main | nvim-treesitter | - |
| **nvim-treesitter/nvim-treesitter** | main | gcc, make | tree-sitter CLI |
| **nvim-telescope/telescope.nvim** | master | plenary.nvim | fd, ripgrep |
| **nvim-lua/plenary.nvim** | master | git | curl |
| **ahmedkhalf/project.nvim** | main | None | telescope.nvim |
| **nvim-telescope/telescope-ui-select.nvim** | master | None | - |
| **nvim-neo-tree/neo-tree.nvim** | v3.x | nui.nvim, plenary.nvim | nvim-web-devicons |
| **nvim-tree/nvim-web-devicons** | master | A Nerd Font (see section 6) | - |
| **MunifTanjim/nui.nvim** | main | None | - |
| **nvimdev/dashboard-nvim** | master | None | telescope.nvim |
| **folke/tokyonight.nvim** | main | A Nerd Font | - |
| **nvim-lualine/lualine.nvim** | master | nvim-web-devicons | - |
| **brenoprata10/nvim-highlight-colors** | main | None | - |
| **kdheepak/lazygit.nvim** | main | lazygit binary | plenary.nvim |
| **CRAG666/code_runner.nvim** | main | g++, python3, node, cargo | - |
| **vyfor/cord.nvim** | master | Discord desktop app running | - |
| **MeanderingProgrammer/render-markdown.nvim** | main | None | - |
| **nvim-mini/mini.indentscope** | main | None | - |

### Known Dependency Notes

| Plugin | Issue | Fix |
|--------|-------|-----|
| telescope.nvim | Without `fd`, find_files may not work properly | Install `fd` |
| lazygit.nvim | Plugin fails without `lazygit` binary | Install lazygit |
| code_runner.nvim | Requires language runtimes for code execution | See code-runner.lua for commands |
| cord.nvim | Requires Discord running | Won't show RPC if Discord not running |
| nvim-web-devicons | Icons show as boxes without Nerd Font | Install a Nerd Font |

---

## 6. Optional Enhancements

### Fonts (Recommended)

| Font | Purpose | Required By |
|------|---------|-------------|
| **Nerd Font** (any variant) | Icons and glyphs | nvim-web-devicons, lualine.nvim, neo-tree.nvim |

**Recommended Nerd Fonts:**
- JetBrains Mono Nerd Font
- FiraCode Nerd Font
- Hack Nerd Font
- Cascadia Code Nerd Font

**Installation:**
```bash
# Debian/Ubuntu
sudo apt install fonts-jetbrains-mono

# Arch Linux
sudo pacman -S nerd-fonts-jetbrains-mono

# Manual (all platforms)
# Download from https://www.nerdfonts.com/font-downloads
```

**Terminal Configuration (Example for Alacritty):**
```yaml
# ~/.config/alacritty/alacritty.yml
font:
  normal:
    family: "JetBrainsMono NFM"
  size: 12
```

### Discord (Optional)

| Application | Purpose | Required By |
|-------------|---------|-------------|
| **Discord** (desktop app) | Rich Presence integration | cord.nvim |

---

## 7. Environment Notes

### PATH Requirements

Ensure these directories are in your `PATH`:

| Directory | Purpose |
|-----------|---------|
| `~/.local/bin` | User-installed binaries |
| `$HOME/.cargo/bin` | Rust/Cargo binaries (rust-analyzer) |
| `$PATH` should include npm global bin | npm global packages |

### Shell Configuration

No special shell configuration required. The config uses Neovim's built-in terminal (`:terminal`).

### Termux-Specific Notes

If running on Termux (Android):

```bash
# Install required packages
pkg update && pkg upgrade
pkg install git nodejs python3 clang make
pkg install fd ripgrep tree

# Install lazygit from GitHub releases (not in pkg)
wget https://github.com/jesseduffield/lazygit/releases/download/v0.41/Lazygit_linux_arm64.tar.gz
tar -xzf Lazygit_linux_arm64.tar.gz -C $PREFIX/bin

# Neovim
pkg install neovim

# Rust (for rust-analyzer)
pkg install rust
```

---

## 8. Installation Commands

### Debian / Ubuntu

```bash
# Core dependencies
sudo apt update
sudo apt install -y git curl unzip build-essential gcc make
sudo apt install -y clangd fd-find ripgrep tree

# Node.js (for LSP servers)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Python
sudo apt install -y python3 python3-pip

# Rust (for rust-analyzer)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer

# LSP servers
npm install -g typescript typescript-language-server pyright lua-language-server

# lazygit
go install github.com/jesseduffield/lazygit@latest

# Nerd Font
sudo apt install -y fonts-jetbrains-mono

# Rebuild treesitter parsers (inside neovim)
nvim +TSUpdateSync +qa
```

### Arch Linux

```bash
# Core dependencies
sudo pacman -Syu
sudo pacman -S git curl unzip base-devel gcc make
sudo pacman -S clang fd ripgrep tree

# Node.js
sudo pacman -S nodejs npm

# Python
sudo pacman -S python python-pip

# Rust
sudo pacman -S rustup
rustup component add rust-analyzer

# LSP servers
npm install -g typescript typescript-language-server pyright lua-language-server

# lazygit
sudo pacman -S lazygit

# Nerd Font
sudo pacman -S ttf-jetbrains-mono ttf-nerd-fonts-symbols

# Rebuild treesitter parsers
nvim +TSUpdateSync +qa
```

### Fedora / RHEL / CentOS

```bash
# Core dependencies
sudo dnf install -y git curl unzip make gcc gcc-c++
sudo dnf install -y clang-tools-extra fd-find ripgrep tree

# Node.js
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo dnf install -y nodejs

# Python
sudo dnf install -y python3 python3-pip

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer

# LSP servers
npm install -g typescript typescript-language-server pyright lua-language-server

# lazygit
sudo dnf install lazygit

# Nerd Font
sudo dnf install -y jetbrains-mono-fonts

# Rebuild treesitter parsers
nvim +TSUpdateSync +qa
```

### Nix / NixOS

```bash
# Add to configuration.nix or use nix-env
nix-env -iA nixpkgs.git nixpkgs.curl nixpkgs.unzip nixpkgs.gcc nixpkgs.make
nix-env -iA nixpkgs.clang-tools nixpkgs.fd nixpkgs.ripgrep nixpkgs.tree
nix-env -iA nixpkgs.nodejs_20
nix-env -iA nixpkgs.python3
nix-env -iA nixpkgs.rustup
rustup component add rust-analyzer
nix-env -iA nixpkgs.nil  # nil_ls

# npm packages
npm install -g typescript typescript-language-server pyright lua-language-server

# lazygit
nix-env -iA nixpkgs.lazygit

# Rebuild treesitter parsers
nvim +TSUpdateSync +qa
```

### Termux (Android)

```bash
pkg update && pkg upgrade
pkg install git curl unzip
pkg install nodejs python3 clang make
pkg install fd ripgrep tree

# Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.41/Lazygit_linux_arm64.tar.gz
tar -xzf Lazygit_linux_arm64.tar.gz -C $PREFIX/bin
rm Lazygit_linux_arm64.tar.gz

# Install Neovim
pkg install neovim

# LSP servers
npm install -g typescript typescript-language-server pyright lua-language-server

# Rust
pkg install rust
rustup component add rust-analyzer
```

---

## 9. Troubleshooting

### Common Errors and Fixes

#### Error: "Module 'cmp_nvim_lsp' not found"
```
Error detected while processing user config:
Module 'cmp_nvim_lsp' not found
```
**Fix:** Run `:Lazy sync` to ensure all plugins are installed.

#### Error: "TSInstallSync failed" / Treesitter parser errors
```
Error: ... failed to compile parser for language 'rust'
```
**Fix:**
```bash
# Ensure build tools are installed
sudo apt install gcc make  # or equivalent for your OS

# In Neovim, run
:TSUpdateSync
```

#### Error: "LSP not starting" / Server not found
```
LSP [server_name] not found. Please install it.
```
**Fix:** Install the required LSP server (see section 3). Example:
```bash
npm install -g pyright
```

#### Error: "Telescope find_files not working" / No results
**Cause:** Missing `fd` utility.
**Fix:**
```bash
# Debian/Ubuntu
sudo apt install fd-find

# Arch Linux
sudo pacman -S fd

# Then alias if needed
alias fd=fdfind
```

#### Error: "LazyGit command not found"
**Cause:** `lazygit` binary not installed.
**Fix:**
```bash
# Linux (x86_64)
curl -Lo lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v0.41/lazygit_0.41_linux_amd64.tar.gz
tar -xzf lazygit.tar.gz -C /usr/local/bin lazygit
rm lazygit.tar.gz
```

#### Error: "Cord: Discord not running"
```
[Cord] Discord is not running or discord game is disabled
```
**Fix:** This is expected if Discord isn't running. Start Discord and wait for it to fully load.

#### Error: "Icons showing as boxes [][][]"
**Cause:** Missing Nerd Font.
**Fix:** Install a Nerd Font and configure your terminal to use it:
```bash
# Download and install JetBrains Mono Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "JetBrains Mono Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Mono/complete/JetBrains%20Mono%20Nerd%20Font%20Complete%20Mono.ttf
fc-cache -fv

# Then set your terminal font to "JetBrainsMono Nerd Font"
```

#### Error: "Permission denied" when opening Neovim
**Cause:** Issue with plugin directory permissions.
**Fix:**
```bash
rm -rf ~/.local/share/nvim/lazy
nvim  # Reinstalls plugins with correct permissions
```

#### Error: "Module 'project_nvim' not found"
**Fix:** Ensure all plugins are loaded:
```vim
:Lazy sync
:qa
nvim
```

#### Neovim slow startup
**Diagnosis:** Check startup time with:
```vim
:profile start profile.log
:profile func *
" Do stuff
:profile stop
```
**Common fixes:**
- Lazy load plugins (most are already lazy-loaded)
- Ensure Treesitter parsers are compiled
- Use `nvim --startuptime startup.log`

### Verification Checklist

Run these commands in Neovim to verify setup:

```vim
" Check Neovim version (should be >= 0.10.0)
:version

" Check plugin status
:Lazy

" Check LSP servers
:LspInfo

" Check Treesitter parsers
:TSUpdateInfo

" Test telescope
:Telescope find_files

" Test lazygit
:LazyGit

" Check code runner
:RunCode
```

---

## Summary: Quick Install (Debian/Ubuntu)

```bash
# One-liner for all essential dependencies
sudo apt update && sudo apt install -y git curl unzip build-essential gcc make clangd fd-find ripgrep tree nodejs npm python3 python3-pip && \
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
rustup component add rust-analyzer && \
npm install -g typescript typescript-language-server pyright lua-language-server && \
wget -O /tmp/lazygit.tar.gz https://github.com/jesseduffield/lazygit/releases/download/v0.41/lazygit_0.41_linux_amd64.tar.gz && \
tar -xzf /tmp/lazygit.tar.gz -C /usr/local/bin && rm /tmp/lazygit.tar.gz && \
sudo apt install -y fonts-jetbrains-mono
```

Then open Neovim and run `:TSUpdateSync` to compile Treesitter parsers.
