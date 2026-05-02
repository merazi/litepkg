# litepkg

A simple and efficient command-line tool for managing your local packages.

## Installation

To build and install `litepkg` on your system, you can use the provided Makefile.

1.  **Clone the repository** (if you haven't already):
    ```bash
    git clone git@github.com:merazi/litepkg.git
    cd litepkg
    ```

2.  **Build the project**:
    ```bash
    make
    ```
    *Note: If you are building from source, you may need to modify the `BUILD_CMD` in the `Makefile` to match your project's build system (e.g., `gcc main.c -o litepkg`, `go build -o litepkg`, `cargo build --release`). The current `make` command is a placeholder.*

3.  **Install `litepkg` and its man page**:
    ```bash
    make install
    ```
    This command will install the `litepkg` executable to `~/.local/bin` and its man page to `~/.local/share/man/man1/`. Ensure that `~/.local/bin` is in your system's `PATH` environment variable to run `litepkg` from anywhere.

4.  **Clean up build artifacts**:
    ```bash
    make clean
    ```
    This command removes any temporary build files, including the compiled `litepkg` executable.

## Usage Guide

`litepkg` provides a simple interface for managing your local packages.

### Basic Commands

*   **`litepkg list`**: Displays a list of all installed packages.
*   **`litepkg install <package_name>`**: Installs a specified package.
*   **`litepkg clean`**: Cleans up temporary build files.

### Help

For detailed information on options and commands, you can view the man page:
```bash
man litepkg
```
Or use the help flag:
```bash
litepkg -h
```

## Contributing

(Add contribution guidelines here if applicable)

## License

(Add license information here if applicable)
