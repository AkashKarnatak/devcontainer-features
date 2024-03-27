# My Dev Container features

This repository contains the following dev container features.

* dotfiles (my dotfiles)
* nvim (nightly neovim installer)

Above features can be installed by adding the following lines in the `features` block of your `./.devcontainer/devcontainer.json`.

```
...
  "features": {
    "ghcr.io/AkashKarnatak/devcontainer-features/dotfiles": {},
    "ghcr.io/AkashKarnatak/devcontainer-features/nvim": {}
  },
...
