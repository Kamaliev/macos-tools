# dotfiles

My terminal setup for macOS.

## Quick Start

```bash
git clone git@github.com:<username>/dotfiles.git ~/dotfiles
bash ~/dotfiles/setup.sh
```

## What's Inside

### Shell

- **Oh My Zsh** — framework for zsh
- **Powerlevel10k** — fast prompt with git status, python venv, command duration

### Zsh Plugins

| Plugin | Description |
|---|---|
| git | Git aliases and completions |
| zsh-autosuggestions | History-based suggestions (grey text, press → to accept) |
| zsh-syntax-highlighting | Syntax highlighting while typing |
| fzf | Fuzzy search history with Ctrl+R |
| docker / docker-compose | Docker completions |
| kubectl | Kubernetes completions |

### CLI Tools

| Command | Replaces | Description |
|---|---|---|
| `eza` | `ls` | File listing with icons and git status |
| `bat` | `cat` | File viewer with syntax highlighting |
| `zoxide` (`z`) | `cd` | Smart directory jumper, remembers frequent dirs |
| `fd` | `find` | Fast file search |
| `rg` | `grep` | Fast content search |
| `fzf` | Ctrl+R | Fuzzy finder for everything |
| `jq` | — | JSON parser (`curl ... \| jq`) |
| `tldr` | `man` | Short cheatsheets for commands |
| `btop` | `htop` | System monitor |
| `ncdu` | `du` | Disk usage analyzer |
| `httpie` (`http`) | `curl` | Human-friendly HTTP client |
| `lazygit` | — | Terminal UI for git |
| `lazydocker` | — | Terminal UI for Docker |

### Aliases

```bash
ls    → eza --icons
ll    → eza -la --icons --git
lt    → eza --tree --icons --level=2
cat   → bat --paging=never
```

## Files

| File | Description |
|---|---|
| `.zshrc` | Zsh config |
| `.p10k.zsh` | Powerlevel10k theme config |
| `starship.toml` | Starship config (backup, not active) |
| `Brewfile` | All brew packages |
| `setup.sh` | One-command installer |

## Updating

After changing configs locally:

```bash
cd ~/dotfiles
cp ~/.zshrc .zshrc
cp ~/.p10k.zsh .p10k.zsh
git add -A && git commit -m "update configs"
git push
```
