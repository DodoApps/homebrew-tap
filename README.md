# DodoApps Homebrew Tap

Official Homebrew tap for the Dodo app family - lightweight, native macOS utilities.

## Installation

```bash
brew tap dodoapps/tap
```

## Available Apps

| App | Description | Install |
|-----|-------------|---------|
| **DodoHub** | App store for DodoApps | `brew install --cask dodohub` |
| **DodoPulse** | Menu bar system monitor | `brew install --cask dodopulse` |
| **DodoTidy** | System cleaner and disk analyzer | `brew install --cask dodotidy` |
| **DodoNest** | Menu bar organizer | `brew install --cask dodonest` |
| **DodoCount** | Google Analytics & Search Console | `brew install --cask dodocount` |
| **DodoShot** | Screenshot and screen recording | `brew install --cask dodoshot` |
| **DodoClip** | Clipboard manager | `brew install --cask dodoclip` |
| **DodoPass** | Password manager | `brew install --cask dodopass` |

## Quick Install

```bash
# Add the tap
brew tap dodoapps/tap

# Install DodoHub (app store for all DodoApps)
brew install --cask dodohub

# Or install individual apps
brew install --cask dodopulse
brew install --cask dodotidy
brew install --cask dodonest
brew install --cask dodocount
brew install --cask dodoshot
brew install --cask dodoclip
brew install --cask dodopass
```

## Note

These apps are not notarized by Apple. The `xattr -cr` command is automatically run during installation to clear quarantine attributes, so most users won't need to do anything extra.

If you still see a security warning on first launch, right-click the app → Open → confirm.

## Links

- [DodoHub](https://github.com/DodoApps/dodohub) - App store
- [DodoPulse](https://github.com/DodoApps/dodopulse) - System monitor
- [DodoTidy](https://github.com/DodoApps/dodotidy) - Disk cleaner
- [DodoNest](https://github.com/DodoApps/dodonest) - Menu bar organizer
- [DodoCount](https://github.com/DodoApps/dodocount) - Analytics dashboard
- [DodoShot](https://github.com/DodoApps/dodoshot) - Screenshots
- [DodoClip](https://github.com/DodoApps/dodoclip) - Clipboard manager
- [DodoPass](https://github.com/DodoApps/dodopass) - Password manager
