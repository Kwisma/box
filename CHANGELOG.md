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

