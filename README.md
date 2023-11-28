# Minimal Neovim Configuration

This is a minimal Neovim configuration entirely written in Lua. The focus is on simplicity and performance, avoiding external plugins to keep the setup lightweight.

## Installation

**Clone this repository into your Neovim configuration directory:**

```sh
git clone https://github.com/levindue/nvim ~/.config/nvim
```

## Features

- **Simplicity:** This configuration aims to be minimalistic, providing only essential features to keep Neovim fast and responsive.

- **Lua Configuration:** The entire configuration is written in Lua for clarity and extensibility.

## Key Bindings

| Shortcut   | Mode    | Description                  |
|------------|---------|------------------------------|
| `-`        | Normal  | File Browser                 |
| `<leader>f`| Normal  | File Fuzzy Finder            |
| `<leader>y`| Normal, Visual | Copy to system clipboard   |
| `<leader>p`| Normal, Visual | Paste from system clipboard |
| `<C-h>`    | Normal  | Window Movement (Left)       |
| `<C-j>`    | Normal  | Window Movement (Down)       |
| `<C-k>`    | Normal  | Window Movement (Up)         |
| `<C-l>`    | Normal  | Window Movement (Right)      |
