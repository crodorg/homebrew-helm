# homebrew-helm

Homebrew tap for [`helm`](https://github.com/crodorg/helm) — share a tmux session between you and an AI agent, local or ssh-remote, with the three-rule discipline baked in. Plus a TUI for the fleet.

## Install

```sh
brew tap crodorg/helm
brew install crodorg/helm/helm
```

The tap-qualified install (`crodorg/helm/helm`) matters: the unqualified `brew install helm` resolves to the Kubernetes package manager, which is a completely different tool. If you also use Kubernetes Helm, only one can own `/opt/homebrew/bin/helm` at a time — pick whichever you reach for more, or `brew link --overwrite crodorg/helm/helm` to swap.

`brew upgrade crodorg/helm/helm` after each new release tag.

## Uninstall

```sh
brew uninstall crodorg/helm/helm
brew untap crodorg/helm
```
