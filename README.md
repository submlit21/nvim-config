# nvim-config

A **Neovim-first configuration** based on my Vim setup, with selective enhancements using Neovim features
(Lua modules, Tree-sitter, modern UI), while **preserving the same core workflow**.

> **clone → PlugInstall → usable**

This repository intentionally keeps runtime-generated files out of Git.

---

## Philosophy

* Same editing habits as Vim
* Same LSP / completion engine (**coc.nvim**)
* Gradual transition to Lua (not forced)
* Use Neovim features only where they add real value

This is **not** a full rewrite — it is a controlled evolution.

---

## Requirements

* **Neovim ≥ 0.8**
* **Git**
* **Node.js ≥ 16** (required by coc.nvim)
* **Nerd Font (required)**

### Nerd Font (Mandatory)

This configuration **requires Nerd Font** for correct UI rendering:

* `nvim-tree` icons
* Statusline icons

Without Nerd Font, icons will be broken or missing.

Recommended fonts:

* FiraCode Nerd Font
* JetBrainsMono Nerd Font

---

## Installation

### 1. Clone

```bash
git clone git@github.com:submlit21/nvim-config.git ~/.config/nvim
```

If `~/.config/nvim` already exists, back it up first.

---

### 2. Install plugins

Open Neovim and run:

```vim
:PlugInstall
```

This will create plugin directories automatically.

---

### 3. Restart Neovim

After restart, the configuration is ready to use.

---

## Core Differences from Vim Version

| Area        | Vim                 | Neovim                         |
| ----------- | ------------------- | ------------------------------ |
| File tree   | NERDTree            | nvim-tree                      |
| Sessions    | Native `:mksession` | sessions.nvim                  |
| Icons       | Optional            | **Nerd Font required**         |
| Lua usage   | None                | Transitional (plugin config)   |
| Tree-sitter | Not used            | Installed (currently disabled) |

---

## UI & Editing Behavior

* Absolute + relative line numbers
* Cursor line highlighting
* 120-column text width
* Soft wrapping with line breaks
* Spaces instead of tabs (4-space indent)
* Persistent undo / swap / backup (local directories)

Directories used:

```text
~/.config/nvim/.backup/
~/.config/nvim/.swp/
~/.config/nvim/.undo/
```

These directories are kept empty in Git using `.gitkeep`.

---

## Plugin Overview

### Core

* **vim-plug** – plugin manager
* **coc.nvim** – completion, diagnostics, LSP

### UI / Navigation

* **lightline.vim**
* **vim-airline + themes**
* **gruvbox**
* **nvim-tree** – file explorer (`<F2>`)
* **LeaderF** – fuzzy finder
* **nvim-web-devicons** – icon support (Nerd Font)

### Editing

* **auto-pairs**
* **nerdcommenter**
* **vim-snippets**

### Parsing (Installed, not enabled)

* **nvim-treesitter**

> Tree-sitter is currently installed but **disabled** due to temporary issues.
> It may be enabled once stabilized.

### Database

* **vim-dadbod**
* **vim-dadbod-ui**

---

## Key Mappings

```text
F2   Toggle nvim-tree
```

---

## LSP & Completion (coc.nvim)

This configuration **intentionally uses coc.nvim**, not Neovim’s native LSP,
to maintain **behavioral consistency with Vim**.

### Common navigation

```text
gd   Go to definition
gi   Go to implementation
gr   References
K    Hover documentation
```

### Diagnostics

```text
[g   Previous diagnostic
]g   Next diagnostic
```

### Refactor / Actions

```text
<leader>rn   Rename
<leader>f    Format selection
<leader>a    Code action
```

---

## Language Support Notes

### C / C++

* Language server: **ccls**
* Configured via `coc-settings.json`
* Cache directory (relative to project):

```json
"cache": { "directory": ".cache/ccls" }
```

You may change this to a global path if desired.

---

### Java

* LSP: **coc-java**
* Runtime example:

```json
"java.configuration.runtimes": [
  {
    "name": "JavaSE-17",
    "path": "/usr/local/lib/java/jdk-17/"
  }
]
```

> ⚠️ **Path notice**
> Update JDK paths in `coc-settings.json` after cloning.

Lombok support is enabled.

---

## Sessions (Neovim-only)

This config uses **sessions.nvim**.

Sessions are **saved and loaded manually** via commands (no auto-save).

---

## Plugin Updates

Plugins are not version-locked.

```vim
:PlugUpdate
```

To fully reinstall:

```bash
rm -rf ~/.config/nvim/plugged
nvim +PlugInstall +qall
```

---

## Directory Layout

```text
~/.config/nvim
├── init.vim
├── lua/
├── config/
├── .backup/
├── .swp/
├── .undo/
├── plugged/     # auto-generated (git ignored)
├── coc-settings.json
└── .gitignore
```

---

## Notes

* Generated directories are intentionally ignored
* coc.nvim is used by design, not legacy
* Lua adoption is **incremental**, not forced

---

## License

Personal configuration. Use freely.
