# C CLI Foundation

This repository contains a tiny command-line program written in plain C so you can explore how a CLI is structured.

## Building

```sh
make
```

The build places the executable at `bin/cli-foundation`. You can change the compiler or flags by exporting `CC`/`CFLAGS` before running `make` (for example `CC=gcc CFLAGS='-std=c11 -O2' make`).

## Running

```
bin/cli-foundation --help
```

You can explore the following commands:

- `greet [name]` – prints a simple greeting (defaults to "there").
- `repeat [count]` – prints a numbered notification that many times; the count must be a positive integer.
- `--version` – shows the tool version.

## Examples

```
bin/cli-foundation greet Ada
bin/cli-foundation repeat 3
```

When you add new commands, update `src/main.c` and keep the usage text in sync. Feel free to replace the `repeat` example with a real task you want your CLI to perform.
