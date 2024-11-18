# Rust

## docs/guides/misc...etc

* [2022 Review | The adoption of Rust in Business](https://rustmagazine.org/issue-1/2022-review-the-adoption-of-rust-in-business/)
* [RustPython](https://rustpython.github.io/)
* [C vs. Rust](http://www-verimag.imag.fr/~mounier/Enseignement/Software_Security/19RustVsC.pdf)
* HTTP/3
    * [quinn-rs/quinn](https://github.com/quinn-rs/quinn)
    * [cloudflare/quiche](https://github.com/cloudflare/quiche)
* [Announcing general availability of the AWS SDK for Rust](https://aws.amazon.com/blogs/developer/announcing-general-availability-of-the-aws-sdk-for-rust/)
* [Generators are dead, long live coroutines, generators are back](https://blog.rust-lang.org/inside-rust/2023/10/23/coroutines.html)
* [Rust by Example](https://doc.rust-lang.org/rust-by-example/)
* [rustlings](https://github.com/rust-lang/rustlings/)
    * This project contains small exercises to get you used to reading and writing Rust code. This includes reading and responding to compiler messages!
* [Installation](https://doc.rust-lang.org/book/ch01-01-installation.html)
* [how-to-complete-rustup-cargo-commands](https://stackoverflow.com/questions/72983692/how-to-complete-rustup-cargo-commands)
* [A half-hour to learn Rust](https://fasterthanli.me/articles/a-half-hour-to-learn-rust)
* [godot-rust](https://godot-rust.github.io/)
* [short guide to get going with Rust and Godot 3.2.](https://hagsteel.com/posts/godot-rust/)
* [歡迎參加 Comprehensive Rust 🦀 課程](https://google.github.io/comprehensive-rust/zh-TW/index.html)
* [rustup-components-history](https://rust-lang.github.io/rustup-components-history/)
* [reddit/rust/The Binder Linux driver is being rewritten in Rust](https://www.reddit.com/r/rust/comments/17lzdwt/the_binder_linux_driver_is_being_rewritten_in_rust)
* [x.ai/career](https://x.ai/career/)
* [How Turborepo is porting from Go to Rust](https://vercel.com/blog/how-turborepo-is-porting-from-go-to-rust)
* [Why Turborepo is migrating from Go to Rust](https://vercel.com/blog/turborepo-migration-go-rust)
* [surrealdb](https://github.com/surrealdb/surrealdb)

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

* [vector: A high-performance observability data pipeline.](https://vector.dev/)
* [bottlerocket-os](https://github.com/bottlerocket-os/bottlerocket)
* [hyperswitch](https://github.com/juspay/hyperswitch)
    * hyperswitch: An open source payments switch written in Rust to make payments fast, reliable and affordable 
* [uniffi-rs](https://github.com/mozilla/uniffi-rs)
* [bindgen](https://github.com/rust-lang/rust-bindgen)
* [sccache](https://github.com/mozilla/sccache)
* [ReVanced APKs download application](https://github.com/revanced-apks/revanced-apks.github.io/tree/main)
* [Tokio](https://docs.rs/crate/tokio/latest)
    * [tokio-rs/tokio](https://github.com/tokio-rs/tokio)
    * Tokio is an event-driven, non-blocking I/O platform for writing asynchronous applications with the Rust programming language.
* [youki](https://github.com/containers/youki)
    * A container runtime written in Rust