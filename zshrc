# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias cdc="cd /run/media/ll/CK/"
alias cdh="cd ~"
alias hx="helix"
eval "$(zoxide init zsh)"

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
source ~/.XPV/bin/activate
source /opt/clash/script/common.sh && source /opt/clash/script/clashctl.sh && watch_proxy
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
