# nvim-simple-config

A simple and minimal Neovim configuration.

## Features
- Lightweight and fast
- Pre-configured with essential plugins
- LSP (Language Server Protocol) support
- Diagnostics (errors, warnings, navigation)
- Key mappings for efficient editing

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
| `Ctrl + s + v` | Vertical split   | Opens a new vertical split   |
| `Ctrl + s + h` | Horizontal split | Opens a new horizontal split |

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

### Close Split

| Shortcut       | Action              |
| -------------- | ------------------- |
| `Ctrl + s + c` | Close current split |

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
| `space + f` | Find files              |
| `space + g` | Live grep (search text) |
| `space + b` | List open buffers       |
| `space + h` | Search help tags        |

---

## Oil (file explorer)
| Shortcut     | Action                  |
| ------------ | ----------------------- |
| `Ctrl + .`   | open Oil window         |

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
