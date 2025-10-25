# sway
```
swaymsg -t get_inputs

swaymsg input <identifier> events disabled

或者在
helix .config/sway/config
```

```
#触控板
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