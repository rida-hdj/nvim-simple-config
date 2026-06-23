# Keymaps

All keyboard shortcuts are designed to be intuitive and consistent. The `Space` key acts as the leader key for most custom mappings.

> **Note:** Shortcuts that use `fd` require the [fd](https://github.com/sharkdp/fd) tool to be installed on your system.

## Window & Split Management

### Create Splits

Open new editing areas horizontally or vertically.

| Shortcut    | Action           | Description                         |
| ----------- | ---------------- | ----------------------------------- |
| `Space + v` | Vertical split   | Opens a new vertical split          |
| `Space + h` | Horizontal split | Opens a new horizontal split        |
| `Space + q` | Close split      | Closes the currently active split   |

### Navigate Between Splits

Move the cursor between open splits using directional keys.

| Shortcut   | Action               |
| ---------- | -------------------- |
| `Ctrl + h` | Move to left split   |
| `Ctrl + j` | Move to bottom split |
| `Ctrl + k` | Move to top split    |
| `Ctrl + l` | Move to right split  |

### Resize Splits

Adjust the size of the active split.

| Shortcut    | Action                |
| ----------- | --------------------- |
| `Alt + ↑`   | Increase split height |
| `Alt + ↓`   | Decrease split height |
| `Alt + ←`   | Increase split width  |
| `Alt + →`   | Decrease split width  |

---

## Buffers

### Navigate Buffers

Cycle through open buffers without closing them.

| Shortcut      | Action         |
| ------------- | -------------- |
| `Tab`         | Next buffer    |
| `Shift + Tab` | Previous buffer|

---

## Integrated Terminal

### Open Terminal

Launch a terminal inside Neovim.

| Shortcut   | Action        | Description                                        |
| ---------- | ------------- | -------------------------------------------------- |
| `Ctrl + t` | Open terminal | Opens terminal using ~25% of screen height         |

### Exit Terminal Mode

Return to normal mode when the terminal is focused.

| Shortcut | Action             |
| -------- | ------------------ |
| `Esc`    | Exit terminal mode |

---

## Code Execution

Run code directly from the editor.

| Shortcut    | Action      | Description                              |
| ----------- | ----------- | ---------------------------------------- |
| `Space + r` | Run code    | Executes the current file in a terminal  |

---

## Git Integration

### Lazygit

Open the Lazygit terminal UI inside Neovim.

| Shortcut     | Action       | Description                                      |
| ------------ | ------------ | ------------------------------------------------ |
| `Space + lg` | Open Lazygit | Opens Lazygit in a floating window               |

---

## File Actions

| Shortcut   | Action    | Description              |
| ---------- | --------- | ------------------------ |
| `Ctrl + s` | Save file | Saves the current buffer |

---

## Window Actions

| Shortcut   | Action       | Description              |
| ---------- | ------------ | ------------------------ |
| `Ctrl + q` | Close window | Closes the current window|

---

## Telescope (Fuzzy Finder)

Fast file searching and navigation powered by Telescope.

> **Requirement:** The `fd` command must be installed for file finding features.

| Shortcut    | Action                  | Description                                  |
| ----------- | ----------------------- | -------------------------------------------- |
| `Space + f` | Find files              | Fuzzy search files by name in the project    |
| `Space + g` | Live grep               | Search text content across all project files |
| `Space + b` | List open buffers       | Switch between currently open buffers        |

---

## Neotree (File Explorer)

Browse and manage project files with a sidebar tree view.

| Shortcut    | Action               | Description                              |
| ----------- | -------------------- | ---------------------------------------- |
| `Space + e` | Toggle Neotree       | Opens or closes the file explorer panel  |

---

## Language Server Protocol (LSP)

Intelligent code features powered by language servers.

> **Requirement:** The appropriate language server must be installed on your system for each file type.

### Core LSP Actions

| Shortcut   | Action        | Description                                           |
| ---------- | ------------- | ----------------------------------------------------- |
| `Ctrl + n` | Rename symbol | Rename a variable, function, or class across all files|
| `Ctrl + a` | Code actions  | Show available code actions (fixes, refactors, etc.)  |
| `Ctrl + f` | Format buffer | Auto-format the entire buffer using the language server|

### Completion Menu

Navigate the autocompletion popup.

| Shortcut      | Action                                           |
| ------------- | ------------------------------------------------ |
| `Tab`         | Select and confirm the highlighted completion    |
| `Shift + Tab` | Move to the previous completion item             |

### Diagnostics

Navigate between errors, warnings, and hints reported by the LSP.

| Shortcut   | Action                | Description                                  |
| ---------- | --------------------- | -------------------------------------------- |
| `[ g`      | Previous diagnostic   | Jump to the previous diagnostic in the file  |
| `] g`      | Next diagnostic       | Jump to the next diagnostic in the file      |
| `Ctrl + e` | Show diagnostic popup | Display full details of the diagnostic under the cursor |

---

## Editing Enhancements

### Better Search Navigation

Improve the default search experience by centering results.

| Shortcut | Action                        | Description                              |
| -------- | ----------------------------- | ---------------------------------------- |
| `n`      | Next search result            | Jump to next match and center on screen  |
| `N`      | Previous search result        | Jump to previous match and center on screen |

### Visual Mode – Indentation

Adjust indentation while text is selected.

| Shortcut   | Action       | Description                    |
| ---------- | ------------ | ------------------------------ |
| `Ctrl + h` | Indent left  | Decrease indent of selected lines |
| `Ctrl + l` | Indent right | Increase indent of selected lines |

### Visual Mode – Move Lines

Shift selected lines up or down without leaving visual mode.

| Shortcut   | Action              | Description                    |
| ---------- | ------------------- | ------------------------------ |
| `Ctrl + j` | Move selection down | Shift selected lines downward  |
| `Ctrl + k` | Move selection up   | Shift selected lines upward    |

---

## Markdown

Enhanced editing for markdown files when using `render-markdown.nvim`.

### Render Markdown

Toggle the visual rendering of markdown elements.

| Shortcut     | Action                | Description                              |
| ------------ | --------------------- | ---------------------------------------- |
| `Space + md` | Toggle markdown render| Enable or disable markdown rendering     |

---

# Live server

Live reload HTML, CSS, and JavaScript

### Commands

| Command    | Action                                                                        |
| ---------- | ----------------------------------------------------------------------------- |
| `:LiveServerStart`                       | start live server in the current directory      |
| `:LiveServerStart ~/projects/my-website` | start live server in a specific directory       |
| `:LiveServerToggle`                      | switch betwen the same project status on or off |
| `:LiveServerStop`                        | stop the server                                 |

---
