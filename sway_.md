# sway
## 获取输入设备硬件
```
swaymsg -t get_inputs
```
## 手动切换开关
```
swaymsg input <identifier> events disabled
```
## 配置文件打开
```

helix .config/sway/config
```
## 触控板
```

input type:touchpad {
  events disabled
}
```
## 鼠标
```

input "input:pointer" {
    left_handed enabled
    tap enabled
    natural_scroll disabled
    dwt enabled
    accel_profile "flat" # 禁用鼠标加速（默认启用；要手动设置，请使用 "adaptive" 而不是 "flat"）
    pointer_accel 0.5 # 设置鼠标灵敏度（在 -1 和 1 之间）
}

```
## 别忘了
```
win + shift + c
//重新导入配置
```