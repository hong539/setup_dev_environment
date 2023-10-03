# Rust

## docs

* [Installation](https://doc.rust-lang.org/book/ch01-01-installation.html)
* [how-to-complete-rustup-cargo-commands](https://stackoverflow.com/questions/72983692/how-to-complete-rustup-cargo-commands)
* [A half-hour to learn Rust](https://fasterthanli.me/articles/a-half-hour-to-learn-rust)
* [godot-rust](https://godot-rust.github.io/)
* [short guide to get going with Rust and Godot 3.2.](https://hagsteel.com/posts/godot-rust/)

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

## Any projects with Rust

* [youki](https://github.com/containers/youki)
    * A container runtime written in Rust