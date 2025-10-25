# solana-cli
## install
```
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
```
## path
```
echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.zshrc  
```
## how to use

```
solana-keygen pubkey ~/my-solana-fs-wallet-keypair.json
```

```
solana-keygen new --outfile ~/my-solana-fs-wallet-keypair.json
```

```
solana config set -k /mnt/d/sol/real_id.json
```

```
solana-keygen recover 'prompt://?full-path=m/44'/501'/0'/0''  -o /mnt/d/sol/real_id.json -f
```

```
solana transfer --from /mnt/d/sol/id.json Am8dfoecfujVFsxemKNH25bc1PyyuezNMiq2f6NiK4kd 5 --url testnet --fee-payer /mnt/d/sol/id.json
```

通过solana网络给别人转 非sol货币，例如-以太币-

```
spl-token transfer <铸币厂的地址公钥> <数量：约定了小数位数，要加以注意> <接受货币者的solana地址公钥>
```

查看发行在solana网络上，某一种，非sol货币余额，例如-以太币-

```
spl-token balance <铸币厂的地址公钥>
```

查看本人账户的，全部，发行在solana网络上的，非sol货币，余额，例如-以太币-Es9vMFrzaCERmJfrF4H2FYD4KCoNkY11McCe8BenwNYB

```
spl-token accounts
```

查看本人账户的，发行在solana网络上的，非sol货币账户信息，例如-以太币-

```
spl-token account-info <铸币厂的地址公钥>
```

展示铸币厂信息

```
spl-token display <铸币厂的地址公钥>
```

查找查看发行在solana网络上，某个solana账户，某种非sol货币的，的关联地址，--verbose选项不可少

```
spl-token address --token <铸币厂的地址公钥> --owner <任何owner的solana地址公钥> --verbose -u devnet
```
