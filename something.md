
# wifi

zg12345678

# ubuntu
```
sudo cp /etc/apt/sources.list.d/ubuntu.sources  /etc/apt/sources.list.d/ubuntu.sources.bak

sudo vim /etc/apt/sources.list.d/ubuntu.sources
#清华
Types: deb
URIs: http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
#阿里
Types: deb
URIs: http://mirrors.aliyun.com/ubuntu/
Suites: noble noble-updates noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

```
# win rust openssl-sys
```
setx OPENSSL_DIR "C:\Program Files\OpenSSL-Win64"
setx OPENSSL_INCLUDE_DIR "C:\Program Files\OpenSSL-Win64\include"
setx OPENSSL_LIB_DIR "C:\Program Files\OpenSSL-Win64\lib"// 'C:\Program Files\OpenSSL-Win64\lib\VC\x64\MD'
setx OPENSSL_STATIC "true"
setx OPENSSL_NO_VENDOR "1"
```
# solana-cli
## how to install
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
## how to use
solana-keygen pubkey ~/my-solana-fs-wallet-keypair.json

solana-keygen new --outfile ~/my-solana-fs-wallet-keypair.json

solana config set -k /mnt/d/sol/real_id.json

solana-keygen recover 'prompt://?full-path=m/44'/501'/0'/0''  -o /mnt/d/sol/real_id.json -f

solana transfer --from /mnt/d/sol/id.json Am8dfoecfujVFsxemKNH25bc1PyyuezNMiq2f6NiK4kd 5 --url testnet --fee-payer /mnt/d/sol/id.json

通过solana网络给别人转 非sol货币，例如-以太币-

spl-token transfer <铸币厂的地址公钥> <数量：约定了小数位数，要加以注意> <接受货币者的solana地址公钥>

查看发行在solana网络上，某一种，非sol货币余额，例如-以太币-

spl-token balance <铸币厂的地址公钥>

查看本人账户的，全部，发行在solana网络上的，非sol货币，余额，例如-以太币-Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB

spl-token accounts

查看本人账户的，发行在solana网络上的，非sol货币账户信息，例如-以太币-

spl-token account-info <铸币厂的地址公钥>

展示铸币厂信息

spl-token display <铸币厂的地址公钥>

查找查看发行在solana网络上，某个solana账户，某种非sol货币的，的关联地址，--verbose选项不可少

spl-token address --token <铸币厂的地址公钥> --owner <任何owner的solana地址公钥> --verbose -u devnet

# sway
swaymsg -t get_inputs

swaymsg input <identifier> events disabled

或者在
helix .config/sway/config

```
#触控板
input type:touchpad {
  events disabled
}
```
```
#鼠标
input "input:pointer" {
    left_handed enabled
    tap enabled
    natural_scroll disabled
    dwt enabled
    accel_profile "flat" # 禁用鼠标加速（默认启用；要手动设置，请使用 "adaptive" 而不是 "flat"）
    pointer_accel 0.5 # 设置鼠标灵敏度（在 -1 和 1 之间）
}

```
别忘了
win + shift + c
重新导入配置
# foot.ini
```
# 默认字体在MacBook Air上太小，我稍微放大一点
font=JetBrains Mono NF:size=14
[colors]
foreground=c0caf5
background=1a1b26

## Normal/regular colors (color palette 0-7)
regular0=15161E  # black
regular1=f7768e  # red
regular2=9ece6a  # green
regular3=e0af68  # yellow
regular4=7aa2f7  # blue
regular5=bb9af7  # magenta
regular6=7dcfff  # cyan
regular7=a9b1d6  # white

## Bright colors (color palette 8-15)
bright0=414868   # bright black
bright1=f7768e   # bright red
bright2=9ece6a   # bright green
bright3=e0af68   # bright yellow
bright4=7aa2f7   # bright blue
bright5=bb9af7   # bright magenta
bright6=7dcfff   # bright cyan
bright7=c0caf5   # bright white

## dimmed colors (see foot.ini(5) man page)
dim0=ff9e64
dim1=db4b4b


```
# fcitx5
```
GLFW_IM_MODULE=fcitx5
INPUT_METHOD=fcitx5
GTK_IM_MODULE=fcitx5
QT_IM_MODULE=fcitx5
XMODIFIERS=\@im=fcitx5
SDL_IM_MODULE=fcitx5
```
# git
```
echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:liuyinwanli/test.git
git push -u origin main
```