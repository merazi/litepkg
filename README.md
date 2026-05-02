# litepkg

A minimal, colorful AUR helper written in Python. `litepkg` provides a simple interface for searching, installing, and managing Arch User Repository (AUR) packages.

## Features

- **Colorful Output:** Minimalistic and clean terminal output with color support.
- **Smart Search:** Search by name, description, or maintainer; filter out-of-date or orphan packages.
- **Dependency Management:** Uses `makepkg` and `pacman` for reliable installation and removal.
- **Batch Upgrades:** Easily check for and apply updates to all your AUR packages.
- **Scripting Friendly:** Includes a `--script` mode for tab-separated, colorless output.

## Installation

### Prerequisites

- Python 3.x
- `git`
- `pacman`
- `makepkg` (part of `base-devel`)

### Building and Installing

Run the following command to install the `litepkg` executable and its man page:

```bash
make install
```

## Configuration

`litepkg` uses a temporary directory to clone AUR repositories before building. By default, it uses `/tmp`. You can customize this by setting the `LITEPKG_CLONE_DIR` environment variable:

```bash
# Set temporarily
export LITEPKG_CLONE_DIR=/path/to/your/dir

# Or add to your shell profile (e.g., ~/.bashrc or ~/.zshrc)
echo 'export LITEPKG_CLONE_DIR=$HOME/.cache/litepkg' >> ~/.bashrc
```

If `make install` installs to `~/.local/bin`, ensure it is in your `PATH`:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

## Usage Guide

`litepkg` uses subcommands for different operations.

### Global Options

*   **`--script`**: Output results in a machine-readable, tab-separated format without colors.

### Commands

*   **`litepkg search <query>`**: Search for packages in the AUR.
    *   `--name`: Search by name only.
    *   `--maintainer`: Search by maintainer name.
    *   `--name-desc`: Search by name and description.
    *   `--description`: Search in description.
    *   `--popularity`: Sort results by popularity.
    *   `--exclude-orphans`: Exclude packages that have no maintainer.
    *   `--exclude-outdated`: Exclude packages marked as out-of-date.
*   **`litepkg install <package>`**: Download, build, and install an AUR package.
*   **`litepkg download <package>`**: Clone the AUR repository for a package to the `LITEPKG_CLONE_DIR`.
*   **`litepkg uninstall <package>`**: Remove a package using `pacman -Rs`.
*   **`litepkg list-installed`**: List all AUR packages currently installed on the system.
*   **`litepkg upgrade`**: Check for updates and upgrade all installed AUR packages.

### Examples

Search for a package by name and sort by popularity:
```bash
litepkg search nodejs --name --popularity
```

Install a package:
```bash
litepkg install visual-studio-code-bin
```

Set clone directory and upgrade all AUR packages:
```bash
LITEPKG_CLONE_DIR=~/aur-builds litepkg upgrade
```

## Help

For more detailed information, view the man page:
```bash
man litepkg
```
Or use the help flag:
```bash
litepkg --help
```

## License

MIT
