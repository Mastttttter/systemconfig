# introduction

This is something special in my arch system

## conda

When use `conda` in auto start config by fish there will be

```fish
<frozen importlib._bootstrap>:488: Warning: OpenSSL 3's legacy provider failed to load. Legacy algorithms will not be available. If you need those algorithms, check your OpenSSL configuration.
<frozen importlib._bootstrap>:488: Warning: OpenSSL 3's legacy provider failed to load. Legacy algorithms will not be available. If you need those algorithms, check your OpenSSL configuration.
```

then to fix this is add

```fish
# ~/.config/fish/config.fish
set -gx CRYPTOGRAPHY_OPENSSL_NO_LEGACY 1
```

> this solution is from <https://aur.archlinux.org/packages/miniconda3?O=0>
