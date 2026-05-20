# homebrew-helm

Private Homebrew tap for [`helm`](https://github.com/crodorg/helm) — single Rust binary that hands an AI agent four primitives (`helm shell open / send / read / list`) for driving a persistent tmux session the operator is already attached to.

## Install

```sh
brew tap crodorg/helm
brew install helm
```

That's it. `brew upgrade helm` after each new release tag.

## Uninstall

```sh
brew uninstall helm
brew untap crodorg/helm
```
