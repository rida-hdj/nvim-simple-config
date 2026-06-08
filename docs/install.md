# Installation Guide

## Requirements

Before installing, make sure the following dependencies are available on your system.

### System Dependencies

| Tool   | Purpose                              |
| ------ | ------------------------------------ |
| `git`  | Cloning the repository               |
| `curl` | Downloading external resources       |
| `unzip`| Extracting compressed files          |
| `gcc`  | Compiling native modules             |
| `make` | Building dependencies                |

### Runtime Dependencies

| Tool       | Purpose                                      |
| ---------- | -------------------------------------------- |
| `Node.js`  | Required by several plugins and LSP servers  |
| `fd`       | Fast file finder used by Telescope           |
| `ripgrep`  | Fast text search used by Telescope           |

### Language Server Protocol (LSP)

Install the appropriate language servers for the languages you work with. Each server provides IDE-like features such as autocomplete, go-to-definition, and diagnostics.

| Server            | Language                    |
| ----------------- | --------------------------- |
| `lua_ls`          | Lua                         |
| `clangd`          | C / C++                     |
| `pyright`         | Python                      |
| `rust_analyzer`   | Rust                        |
| `html`            | HTML                        |
| `cssls`           | CSS                         |
| `ts_ls`           | JavaScript / TypeScript     |
| `nil_ls`          | Nix                         |
| `marksman`        | Markdown                    |

## Backup Existing Config

If you already have a Neovim configuration, back it up before proceeding. This ensures you can restore it later if needed.

### Linux / macOS

```bash
mv ~/.config/nvim ~/.config/nvim_backup
```

### Windows (PowerShell)

```powershell
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim_backup
```

## Installation

Clone the repository into your Neovim configuration directory.

### Linux / macOS

```bash
git clone --depth 1 https://github.com/rida-hdj/nvim-simple-config.git ~/.config/nvim
```

### Windows (PowerShell)

```powershell
git clone --depth 1 https://github.com/rida-hdj/nvim-simple-config.git $env:LOCALAPPDATA\nvim
```

## Post-Installation

1. Open Neovim to install plugins automatically:

   ```bash
   nvim
   ```

2. Wait for the plugin manager to finish installing all dependencies.

3. Restart Neovim once installation is complete.
