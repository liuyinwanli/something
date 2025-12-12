# cargo配置国内源
```
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"
replace-with = 'rsproxy'

[source.rsproxy]
registry = "sparse+https://rsproxy.cn/index/"
[source.ustc]
registry = "sparse+https://mirrors.ustc.edu.cn/crates.io-index/"

[source.tuna]
registry = "sparse+https://mirrors.tuna.tsinghua.edu.cn/crates.io-index/"

[net]
git-fetch-with-cli = true
[http]
proxy = "" # leaving this as a blank string resets proxy to default
```
# rust安装国内源
```
// 添加以下内容到shell比如bash,zsh配置文件
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
```
