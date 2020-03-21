# cptar Plugin for ZSH

This plugin adds the command `cptar` which allows copy directories using `tar`.

Using two `tar` processes can be faster if copying to a different hard drive than using `cp`,
because `cp` reads and writes file per file,
but the two `tar` processes try to read and write simultaneously.
`pv` adds a cache between both processes to optimize speed
and shows you how fast the process is progressing.
Because estimating the time left requires measuring the size of the source files,
this feature is not built in to speed up the process.

## Repository clones

The original repository will be stored on [GitHub](https://github.com/Zocker1999NET/zsh-cptar).
You can use the original reopsitory if you want to use GitHub.
Also issues and pull requests will be collected there for convenience.

This repository will be cloned to my own server.
You can use the [clone](https://git.banananet.work/zsh-plugins/cptar) instead of this repository
if you want to avoid use GitHub.

## Installation

### Prerequisites

- `mkdir`
- `pv`
- `tar`

### zsh (without plugin support)

1. Clone project
2. Add following line to your `.zshrc`:
```sh
SOURCE "path/to/repo/cptar.plugin.zsh"
```

### oh-my-zsh

1. Clone project into `~/.oh-my-zsh/custom/plugins/cptar`
2. Add `cptar` to your plugin list
```sh
plugins=(… cptar …)
```

### Antigen

1. Add following line to your `.zshrc`:
```sh
antigen bundle Zocker1999NET/zsh-cptar # GitHub if default repository unchanged
antigen bundle https://git.banananet.work/zsh-plugins/cptar # Own Server
```

or

1. Add the repository to your plugin list
```sh
antigen bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-cptar # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/cptar # Own Server
  …
EOBUNDLES
```

### Antibody

1. Add following line to your `.zshrc`:
```sh
antibody bundle Zocker1999NET/zsh-cptar # GitHub if default repository unchanged
antibody bundle https://git.banananet.work/zsh-plugins/cptar # Own Server
```

or

1. Add the repository to your plugin list
```sh
antibody bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-cptar # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/cptar # Own Server
  …
EOBUNDLES
```

## Usage

Calling `cptar SOURCE DEST` copies the directory *source* with contents to the path *dest*.
If required, a directory *DEST* will be created along required parent directories.
If *DEST* exists but is not a directory, the command will fail.
The contents of *SOURCE* will be copied into the directory *DEST*,
so ensure *DEST* is empty, does not exist or you want to merge the contents of *SOURCE* and *dest* in *dest*.

## License

This plugin is licensed under WTFPL.
Do the fuck you want to with this plugin,
but please contribute to this plugin if you have made any improvements which could be useful for others.

## Contribute

If you find any issue, report it
or fix it yourself and create a pull request.
