# nvim-simple-config
[![Enter Docs](https://img.shields.io/badge/ENTER-DOCUMENTATION-00bcd4?style=for-the-badge&logo=gitbook)](https://rida-hdj.github.io/nvim-simple-config/)

A simple and minimal Neovim configuration.

## Features
- Lightweight and fast
- Pre-configured with essential plugins
- LSP (Language Server Protocol) support
- Diagnostics (errors, warnings, navigation)
- Key mappings for efficient editing

## Documentation

The docs source is a [Zola](https://www.getzola.org) site in `site/` using the bundled `lessdoc` theme. Build it into `docs/` with:

```bash
cd site && zola build --output-dir ../docs --force
```

The `Deploy docs` GitHub Actions workflow builds the site and publishes it to GitHub Pages.
