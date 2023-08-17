# Rust

## docs

* [Installation](https://doc.rust-lang.org/book/ch01-01-installation.html)
* [how-to-complete-rustup-cargo-commands](https://stackoverflow.com/questions/72983692/how-to-complete-rustup-cargo-commands)

```shell
#curl https://sh.rustup.rs -sSf | sh
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"

which rustup
rustup --help
rustup --version

#How to complete rustup/cargo commands?
mkdir -p ~/.local/share/bash-completion/completions
rustup completions bash       > ~/.local/share/bash-completion/completions/rustup
rustup completions bash cargo > ~/.local/share/bash-completion/completions/cargo
```