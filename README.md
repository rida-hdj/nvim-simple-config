# nvim-simple-config

A simple and minimal Neovim configuration.

## Features
- Lightweight and fast
- Pre-configured with essential plugins
- LSP (Language Server Protocol) support
- Diagnostics (errors, warnings, navigation)
- Key mappings for efficient editing

## Requirements
### Install requirements
- `git`
- `Node.js`
- `curl`
- `unzip`
- `gcc`
- `make`
- `fd`
- `ripgrep`
### LSP requirements
- `lua_ls` -> lua
- `clangd` -> C/C++
- `pyright` -> python
- `rust_analyzer` -> rust
- `html` -> html
- `cssls` -> css
- `ts_ls` -> javascript/typescript
- `nil_ls` -> nix

## Backup Existing Config
Before installing this configuration, it's recommended to back up your existing Neovim configuration:

```bash
mv ~/.config/nvim ~/.config/nvim_backup
```
This renames your current Neovim folder to nvim_backup so you can restore it anytime.

## Installation
Clone the repository into your Neovim config directory:

```bash
git clone --depth 1 https://github.com/rida-hdj/nvim-simple-config.git ~/.config/nvim
```
Open Neovim

## Keymaps

---

## Window & Split Management

### Create Splits

| Shortcut       | Action           | Description                  |
| -------------- | ---------------- | ---------------------------- |
| `Space + v` | Vertical split   | Opens a new vertical split   |
| `Space + h` | Horizontal split | Opens a new horizontal split |

---

### Navigate Between Splits

| Shortcut   | Action               |
| ---------- | -------------------- |
| `Ctrl + h` | Move to left split   |
| `Ctrl + j` | Move to bottom split |
| `Ctrl + k` | Move to top split    |
| `Ctrl + l` | Move to right split  |

---

### Resize Splits

| shortcuts | Action                |
| --------- | --------------------- |
| `Alt + ↑` | Increase split height |
| `Alt + ↓` | Decrease split height |
| `Alt + ←` | Increase split width  |
| `Alt + →` | Decrease split width  |

---

## Integrated Terminal

### Open Terminal

| Shortcut   | Action        | Description                                             |
| ---------- | ------------- | ------------------------------------------------------- |
| `Ctrl + t` | Open terminal | Opens a horizontal terminal using ~25% of screen height |

### Exit Terminal Mode

| Shortcut | Action             |
| -------- | ------------------ |
| `Esc`    | Exit terminal mode |

---

### Run code

| Shortcut    | Actions      |
| ----------- | ------------ |
| `Space + r` | Run the code |

---

### Lazygit

| Shortcut     | Actions      |
| ------------ | ------------ |
| `Space + lg` | Open Lazygit |

---

### Render markdown

| Shortcut     | Actions                        |
|------------- | ------------------------------ |
| `Space + md` | Enable/Disable Markdown Render |

---

## File Actions

| Shortcut           | Action        |
| ------------------ | ------------- |
| `Ctrl + s`         | Save file     |
| `Ctrl + q`         | Quit window   |
| `Ctrl + Shift + q` | Save and quit |

---

## Telescope (Fuzzy Finder)

> These shortcuts require **fd** to be installed.

| Shortcut    | Action                  |
| ----------- | ----------------------- |
| `Space + f` | Find files              |
| `Space + g` | Live grep (search text) |
| `Space + b` | List open buffers       |

---

## Neotree (file explorer)
| Shortcut      | Action                    |
| ------------- | ------------------------- |
| `Space + e`   | Open/Close Neotree window |

---

## LSP (Language Server Protocol)
The LSP needs to be installed on the system to work

### Core LSP Actions

| Shortcut   | Action        |
| ---------- | ------------- |
| `Ctrl + n` | Rename symbol |
| `Ctrl + a` | Code actions  |
| `Ctrl + f` | Format buffer |

### Completion menu

| Shortcut        | Action                                           |
| --------------- | ------------------------------------------------ |
| `Tab`           | Confirm the selected item in the completion menu |
| `Shift + Tab`   | Move to the next item in the completion menu     |

---

### Diagnostics

| Shortcut   | Action                |
| ---------- | --------------------- |
| `[ g`      | Previous diagnostic   |
| `] g`      | Next diagnostic       |
| `Ctrl + e` | Show diagnostic popup |

---

## Editing Enhancements

### Better Search Navigation

| Shortcut | Action                            |
| -------- | --------------------------------- |
| `n`      | Next search result (centered)     |
| `N`      | Previous search result (centered) |

---

### Visual Mode – Indentation

| Shortcut   | Action       |
| ---------- | ------------ |
| `Ctrl + h` | Indent left  |
| `Ctrl + l` | Indent right |

---

### Visual Mode – Move Lines

| Shortcut   | Action              |
| ---------- | ------------------- |
| `Ctrl + j` | Move selection down |
| `Ctrl + k` | Move selection up   |

---

```bash
git clone --depth 1 https://github.com/rida-hdj/nvim-simple-config.git $env:LOCALAPPDATA\nvim
```
i don't use windows maybe it work
