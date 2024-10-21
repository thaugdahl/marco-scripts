## Setup

Add the following to your shell runcom file (`.bashrc`, `.zshrc`, etc.)

```sh
# Location of your project root
export MARCO_PROJECT_ROOT=/home/user/sources/marco
export SUNDIALS_EXT_LIB_PATH=/home/user/sources/marco/install/sundials/lib/
export MARCO_EXPORT_VARS=yes

# The path to `marco-config` should be the directory name, not the `marco-config` file path
export MARCO_SETUP_SCRIPTS_DIR=/path/to/marco-config

source /path/to/marco-config
```

### Project Root

Your project root should be set up with a `source` and `install` directory.
Pull the `marco`, `marco-runtime` and `llvm-project` repositories into the `source` directory.

```
.
├── install
│   ├── llvm-project
│   ├── marco
│   ├── marco-runtime
│   └── sundials
└── source
    ├── llvm-project
    ├── marco-compiler
    └── marco-runtime
```

### Sundials

If you've manually installed the libraries, set `SUNDIALS_EXT_LIB_PATH` to the
directory containing the library files (`*.so`).

## Stowing

Stow with `stow . -t $HOME`


