#### Changelog 1.2.8 - 14-06-2026
- 1.2.8 (ab94b42)
- fix(log): 统一脚本日志输出 (dfa2661)
- fix(net): 修复 TUN 模式下黑白名单与 fake-ip 连接异常 (ec78ef8)
- fix(net): 移除 net.inotify 并发锁，优化日志输出与防回环规则更新 (461f767)
- 提交上一版缺失的 box.tool 修改 (f98a590)
- feat: 优化网络规则刷新 (9f615f4)
- refactor: 重构代理规则与内核配置覆写，新增性能模式与其余模式 CNIP 兼容 (ea408a1)
- fix: 修复不完整的 UA (5e22643)
- feat: 添加 mihomo 和 sing-box 可执行文件 (bed2f11)
- Update crontab.cfg (fdbc374)
- Add function to retrieve core version information (7efa64a)
- 1.2.7 (c42ddfb)
- fix: 调整订阅 provider 并修复服务/规则稳定性 (badedeb)
- feat(net): 重构 iptables 框架并增强网络匹配能力 (47a5185)
- feat: 优化脚本，添加新内容 - 优化 iptables 脚本，添加 cnip(需内核有 ipset) - 优化 tool 的 upxui，以支持从配置里获取面板链接与存储位置 - 新增 tool 的 upcnip，用于更新 cnip (370d9c7)
- 1.2.6 (ee2d444)
- fix(service): 修复一个 core 模式的问题，模块安装超时改为10s (4972c7f)
- perf: 为 proxy_mode 新增 core 模式，为模块安装新增超时自动选择（默认为音量+） (4236560)
- fix(service): 修复启动停止的问题，为修改 proxy-providers 添加 "auto_modify_config"="true" 的限制 (df073df)
- refactor: 重构网络状态控制，优化自动修改 proxy-providers 配置内容 - 简化 ctr.utils 的 ssid 是否在列表中 - 重构 ctr.inotify 部分代码 - 重新整理 settings.ini，并将 box.tool 的部分设置移至此配置文件 - 优化 box.tool 的自动修改 proxy-providers (dfc467d)
- feat(tool): 为更新订阅新增自动修改 mihomo 的 proxy-providers 配置内容 (34573eb)
- perf(customize): 为更新模块新增是否删除更新残留文件选项 (367926a)
- feat(tool): 更新 webUI 将不再是固定 dashboard 目录，会检索配置文件设置的路径 (4d25b3f)
- 1.2.5 (678274f)
- 优化默认 mihomo 配置 (441b9cd)
- 精简默认 mihomo 配置文件 (2c79b07)
- Update README.md (9453352)
- fix(service): prepare_singbox 先进入到配置文件目录再进行 `check -c`，以避免检查配置时遇到相对路径报错的问题 (e51de93)
- fix(service): 将 prepare_singbox 下的 `format -w -c` 改为 `check -c` (334be91)
- feat(tool): 增强 cpuset 等功能，并移动 GitHub 密钥到对应位置 - 将 GitHub 密钥位置移动到 `settings.ini` - 为 cpuset 等设置 box 组，不支持则回退 (cce73c6)
- perf(tool): 为 `box.tool` 新增可选填入 GitHub Token (b72f2f9)
- 修复拉取标准订阅时，未找到 proxies 字段的错误 (117ebfa)
- feat(settings): 增强安装脚本、订阅更新 - 为安装脚本添加 settings.ini 覆盖或增量更新的可选项 - 订阅将在 tool.log 掩码显示，并增加更多日志信息 (25ebe49)
- 添加 telegram bot 并构建转发 (3e79585)
- 1.2.4 (2948ddd)
- refactor(service): 同步上游重构 inotify & utils https://github.com/taamarin/box_for_magisk/commit/f61566bb2a0fbd4960734710568f5ef3d1375f63 (825c4e2)
- 优化 gid 匹配，优化 uid.log 显示 (98dbea8)
- 优化 WiFi SSID 匹配以支持带空格 SSID (9ee359a)
- 修复sing-box启动命令 (1de522e)
- feat(core): 修复改进一些问题   - `box.tool`: 改进renew=true时的log显示   - `box.iptables`: 同步上游,去掉tun_forward   - `box.service`: 优化核心启动的指令 (78c6e15)
- feat(tool): 修复使用wget安装报错问题，格式化settings.ini的bool类字段 (854bc4e)
- feat(tool): 修改安装程序并优化订阅更新功能   - `settings.ini` 已还原为覆盖更新   - `box.tool` 优化 mihomo 的订阅更新功能以适配 renew=true (015b20b)
- feat(subs): 增强 mihomo 和 sing-box 的订阅功能 为 mihomo 实现了多订阅支持： - `settings.ini` 中的 'subscription_url_mihomo' 和 'name_provide_mihomo_config' 支持数组格式，允许配置多个订阅链接及其对应的文件名。 (acb7553)
- 修复安装程序特殊字符被错误处理的问题 (80a7ad7)
- feat: 优化退出码与回退版本   - 优化 `box.tool` 内 singbox 更新订阅的退出码以适配软件的 toast 提示   - `box.iptables` 回退版本 (55ef8b1)
- feat: 改进修复在magisk上安装报错的问题 (311bc0b)
- feat: 改进安装脚本中的音量键检测 (ef7597d)
- fix(update): 修复之前安装与更新的加速链接错误的问题 (bba1252)
- feat(settings): 优化修复proxy_mode的获取 (032b545)
- feat(service): 优化修复启动失败时的错误描述，不再会清空module.prop (5ce2daa)

#### Changelog 1.2.8 - 13-06-2026
- fix(log): 统一脚本日志输出 (dfa2661)
- fix(net): 修复 TUN 模式下黑白名单与 fake-ip 连接异常 (ec78ef8)
- fix(net): 移除 net.inotify 并发锁，优化日志输出与防回环规则更新 (461f767)
- 提交上一版缺失的 box.tool 修改 (f98a590)
- feat: 优化网络规则刷新 (9f615f4)
- refactor: 重构代理规则与内核配置覆写，新增性能模式与其余模式 CNIP 兼容 (ea408a1)

#### Changelog 1.2.7 - 04-04-2026
- 重构网络与 iptables 规则框架，增强 TProxy/IPv6 与网络匹配稳定性
- 新增 CNIP（ipset）分流能力，并提供 upcnip 更新命令
- 安装恢复流程补充 gid.list.cfg

#### Changelog 1.2.6 - 06-11-2025
- 优化 WebUI 不再是固定 dashboard 目录
- 为模块安装新增删除更新残留选项，新增超时自动选择
- 为更新订阅新增自动修改 mihomo 的 proxy-providers 配置内容

#### Changelog 1.2.5 - 02-10-2025
- 优化安装脚本优化 service 的 singbox 部分内容
- 增加 GitHub Token 密钥填写
- 精简优化默认 mihomo 配置

#### Changelog 1.2.4 - 23-08-2025
- 优化与重构

# Changelog

