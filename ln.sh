#!/bin/sh
# 获取脚本的绝对路径
# SCRIPT_PATH=$(readlink -f "$0")
# # 获取脚本所在目录
# SCRIPT_DIR=$(dirname $SCRIPT_PATH)

# # 使用该目录作为参数
# echo "脚本所在目录是: $SCRIPT_DIR"
# 例如，调用另一个脚本或执行命令
# ./other_script.sh "$SCRIPT_DIR"
# 获取脚本所在目录的绝对路径
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
if ! command -v zsh >/dev/null 2>&1; then
    echo "未找到zsh"
    exit 1
fi
current_shell="$(basename "$SHELL")"
if [ "$current_shell" = "zsh" ]; then
    echo "当前 shell是zsh"
    # exit 0f
else
    zsh_path=$(command -v zsh)
    echo "将默认 shell 修改为：$zsh_path"
    chsh -s "$zsh_path"
fi


if [ "$current_shell" = "zsh" ]; then
    # echo "当前shell是zsh"
    echo "复制zsh配置"
    ln -snf "${SCRIPT_DIR}/zshrc" "/home/ll/.zshrc"
fi


if ! command -v rustc > /dev/null 2>&1; then
    echo "Rust 未安装。"
    echo "现在安装rust"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
if command -v rustc > /dev/null 2>&1; then
    echo "Rust 已安装"
    echo "复制cargo配置文件"
    ln -snf "${SCRIPT_DIR}/cargo_config.toml" "/home/ll/.cargo/config.toml"
fi

# if
# ln -snf "${SCRIPT_DIR}/helix_config.toml" "/home/ll/.config/helix/config.toml"
# echo "软链接已创建：${HELIX_TARGET} -> ${HELIX_SOURCE}"

# if
# # 判断链接是否存在
# if [ -L "$LINK" ]; then
#     echo "已有软链接，删除..."
#     rm "$LINK"
# elif [ -e "$LINK" ]; then
#     echo "已有同名文件或目录，删除..."
#     rm -rf "$LINK"
# fi

# # 创建软链接
# ln -s "$SOURCE" "$LINK"

# echo "软链接已创建：$LINK -> $SOURCE"

