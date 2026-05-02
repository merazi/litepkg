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

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/merazi/litepkg.git
    cd litepkg
    ```

2.  **Install `litepkg` and its man page**:
    ```bash
    sudo make install
    ```
    This command installs the `litepkg` executable to `/usr/local/bin` and the man page to `/usr/local/share/man/man1/`.

## Usage Guide

`litepkg` uses subcommands for different operations.

### Basic Commands

*   **`litepkg search <query>`**: Search for packages in the AUR.
    *   `--popularity`: Sort results by popularity.
    *   `--name`: Search by name only.
    *   `--exclude-outdated`: Filter out out-of-date packages.
*   **`litepkg install <package>`**: Download, build, and install an AUR package.
*   **`litepkg upgrade`**: Check for updates and upgrade all installed AUR packages.
*   **`litepkg list-installed`**: List all AUR packages currently installed on the system.
*   **`litepkg uninstall <package>`**: Remove a package using `pacman -Rs`.
*   **`litepkg download <package>`**: Clone the AUR repository for a package without building it.

### Global Options

*   **`--script`**: Output results in a machine-readable, tab-separated format without colors.

### Examples

Search for a package and sort by popularity:
```bash
litepkg search nodejs --popularity
```

Install a package:
```bash
litepkg install visual-studio-code-bin
```

Upgrade all AUR packages:
```bash
litepkg upgrade
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

MIT License (or as specified in the project).

