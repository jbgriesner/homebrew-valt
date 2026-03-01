# homebrew-valt

Homebrew tap for [Valt](https://github.com/jb/valt) — a local, offline, encrypted secrets manager with a terminal UI.

## Install

```sh
brew tap jbgriesner/valt
brew install valt
```

## Usage

```sh
valt
```

The vault is stored at `~/.local/share/valt/vault.svlt` and encrypted with Argon2id. Your master password never leaves your machine.

## Uninstall

```sh
brew uninstall valt
brew untap jbgriesner/valt
```
