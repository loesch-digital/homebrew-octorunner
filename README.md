# loesch-digital Homebrew Tap

Install macOS apps from loesch-digital with Homebrew.

| App | Cask | Requirements |
| --- | --- | --- |
| [OctoRunner](https://github.com/loesch-digital/octorunner) | `loesch-digital/tap/octorunner` | macOS 15 or later, Apple Silicon |

## Install OctoRunner

```sh
brew install --cask loesch-digital/tap/octorunner
```

If Homebrew asks you to trust the cask, run these commands:

```sh
brew tap loesch-digital/tap
brew trust --cask loesch-digital/tap/octorunner
brew install --cask loesch-digital/tap/octorunner
```

To upgrade:

```sh
brew update
brew upgrade --cask loesch-digital/tap/octorunner
```

## Migrate from the previous tap

If you installed OctoRunner from `loesch-digital/octorunner`, quit the app and switch to the shared tap once:

```sh
HOMEBREW_NO_AUTOREMOVE=1 brew uninstall --cask loesch-digital/octorunner/octorunner
brew untap loesch-digital/octorunner
brew install --cask loesch-digital/tap/octorunner
```

The uninstall command preserves OctoRunner's settings and runner data. If Homebrew asks you to trust the new cask, follow the trust steps above.

## Cask layout

Each app has its own file under `Casks/`. Its release workflow updates that file for the latest stable release. Download archives and older versions are available from the app's own GitHub Releases page.
