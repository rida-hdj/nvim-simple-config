+++
title = "Keymaps"
+++

All keyboard shortcuts are designed to be intuitive and consistent. The `Space` key acts as the leader key for most custom mappings.

> **Note:** Shortcuts that use `fd` require the [fd](https://github.com/sharkdp/fd) tool to be installed on your system.

## Window & Split Management

### Create Splits

Open new editing areas horizontally or vertically.

- `Space + v` — **Vertical split**: opens a new vertical split
- `Space + h` — **Horizontal split**: opens a new horizontal split
- `Space + q` — **Close split**: closes the current split without deleting its buffer

### Navigate Between Splits

Move the cursor between open splits using directional keys.

- `Ctrl + h` — Move to left split
- `Ctrl + j` — Move to bottom split
- `Ctrl + k` — Move to top split
- `Ctrl + l` — Move to right split

### Resize Splits

Adjust the size of the active split.

- `Alt + ↑` — Increase split height by 2 rows
- `Alt + ↓` — Decrease split height by 2 rows
- `Alt + ←` — Increase split width by 4 columns
- `Alt + →` — Decrease split width by 4 columns

## Buffers

### Navigate Buffers

Cycle through open buffers without closing them.

- `Tab` — Next buffer
- `Shift + Tab` — Previous buffer

## Integrated Terminal

### Open Terminal

Launch a terminal inside Neovim with `toggleterm.nvim`.

- `Ctrl + t` — **Toggle terminal**: opens a horizontal terminal 10 rows tall in insert mode; pressing it again hides it

### Exit Terminal Mode

Return to normal mode when the terminal is focused.

- `Esc` — Exit terminal mode

## Dashboard

The `snacks.nvim` dashboard accepts these keys on the start screen.

- `1` — Find file
- `2` — New file
- `3` — Recent files
- `4` — Recent projects
- `5` — Find text
- `6` — LazyGit
- `7` — Lazy
- `8` — Keymaps
- `q` — Quit

## Code Execution

Run code directly from the editor with `code_runner.nvim`.

- `Space + r` — **Run code**: executes the current file in a terminal

Commands are configured for HTML, TypeScript, Python, Rust, and C/C++.

## Git Integration

### Lazygit

Open the Lazygit terminal UI inside Neovim.

- `Space + lg` — **Open Lazygit**: opens Lazygit in a floating window

## File Actions

- `Ctrl + s` — **Save file**: saves the current buffer

## Window Actions

- `Ctrl + q` — **Close buffer**: deletes the current buffer, force-closes a terminal buffer, or quits Neovim when it is the last buffer

## Telescope (Fuzzy Finder)

Fast file searching and navigation powered by Telescope.

> **Requirement:** The `fd` command must be installed for file finding features.

- `Space + f` — **Find files**: fuzzy search files by name in the project
- `Space + g` — **Live grep**: search text content across all project files
- `Space + b` — **List open buffers**: switch between currently open buffers

## Neotree (File Explorer)

Browse and manage project files with a sidebar tree view.

- `Space + e` — **Toggle Neotree**: opens or closes the file explorer panel

## Language Server Protocol (LSP)

Intelligent code features powered by language servers.

> **Requirement:** The appropriate language server must be installed on your system for each file type.

### Core LSP Actions

- `Ctrl + n` — **Rename symbol**: rename a variable, function, or class across all files
- `Ctrl + a` — **Code actions**: show available code actions (fixes, refactors, etc.)
- `Ctrl + f` — **Format buffer**: auto-format the entire buffer asynchronously using the language server

### Completion Menu

Navigate the autocompletion popup.

- `Tab` — Confirm the highlighted completion and trigger the next completion
- `Shift + Tab` — Move to the next completion item
- `↓`, `↑`, `Ctrl + j`, `Ctrl + k` — Keep their default behavior in the completion popup

> **Note:** This config maps `Shift + Tab` to the next completion item, not the previous one.

### Navigation / Documentation

- `gd` — **Go to definition**: jump to the definition of the symbol under the cursor
- `gi` — **Go to implementation**: jump to the implementation of the symbol under the cursor
- `gr` — **Show references**: list all references to the symbol under the cursor

### Diagnostics

Navigate between errors, warnings, and hints reported by the LSP.

- `Alt + k` — **Previous diagnostic**: jump to the previous diagnostic in the file
- `Alt + j` — **Next diagnostic**: jump to the next diagnostic in the file
- `Space + dl` — **Location list**: show all diagnostics for the current buffer in the location list

## Editing Enhancements

### Better Search Navigation

Improve the default search experience by centering results.

- `n` — **Next search result**: jump to the next match and center on screen
- `N` — **Previous search result**: jump to the previous match and center on screen

### Visual Mode – Indentation

Adjust indentation while text is selected.

- `Ctrl + h` — **Indent left**: decrease indent of selected lines
- `Ctrl + l` — **Indent right**: increase indent of selected lines

### Visual Mode – Move Lines

Shift selected lines up or down without leaving visual mode.

- `Ctrl + j` — **Move selection down**: shift selected lines downward
- `Ctrl + k` — **Move selection up**: shift selected lines upward

## Markdown

Enhanced editing for markdown files when using `render-markdown.nvim`.

### Render Markdown

Toggle the visual rendering of markdown elements.

- `Space + md` — **Toggle markdown render**: enable or disable markdown rendering

## Delete Without Yanking

Delete text without overwriting the unnamed register.

- `d` — **Delete**: in normal and visual mode, deletes into the black-hole register instead of yanking the deleted text

## Live Server

Live reload HTML, CSS, and JavaScript with `live-server.nvim`. The configured server listens on `127.0.0.1:8080`.

### Commands

- `:LiveServerStart` — Start live server in the current directory
- `:LiveServerStart ~/projects/my-website` — Start live server in a specific directory
- `:LiveServerToggle` — Switch the current project's server on or off
- `:LiveServerStop` — Stop the server
