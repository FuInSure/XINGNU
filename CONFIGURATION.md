# 配置同步说明

统一包带有 30 份从房主当前安装提取的通用配置，内容与原文件一致；不包含存档、生日玩家数据、UIInfoSuite2 的个人存档选项、账号、密码、令牌、日志或缓存。已检查常见密钥字段与绝对路径，未发现匹配。

通过 Setup-XINGNU.ps1 应用配置，先检查版本和所有汉化输入。无需手动挑选配置文件。**会覆盖目标通用配置**，原文件在 Mods 上一级 XINGNU-config-backup-时间-随机值 中备份。脚本写入失败时尝试回滚本阶段；汉化和配置是分阶段备份，不是假定跨阶段全事务。

想恢复时先关游戏，按备份里的相对目录复制原文件回 Mods；restore-list.json 的 Existed=false 表示本次新增，恢复时删除相应文件。保留备份直到联机测试通过。

## 会同步哪些重要设置

- F6 快捷键表、P 设置、F8 CJB、F7 生日、B 远程箱子、U 自动化覆盖层。
- 晶球动画 20 倍、6 个戒指槽、跳过钓鱼小游戏并设置 100% 完美捕获。
- CJB 无限生命、自动喂养/抚摸/浇水、即时建造等当前功能。不是原版难度，请团队先同意玩法。
- 梯子定位的强制竖井关闭；矿洞电梯每 5 层一站、费用 0。
- SVE 相关配置及美化、对白选择。
- Go To Bed 仍复制房主配置（1:40 传送至主屋固定位置），**脚本不会自动禁用**。初次联机前请全员按主指南移到 Mods 外；这会有意偏离 35 项基线。若这样做，校验报告其缺失是正常且已知的，但不能说原始基线全部通过。

组员首次进入新存档时，需要各自设置生日、UI 提示偏好等个人状态。这些不应通过复制房主旧存档记录实现。后续改动共享玩法配置，应一起更新团队基线；个人改键后快捷键表也要同步。

## 同步文件

- `AutoFisher/config.json`
- `Automate/config.json`
- `AutomaticGates/config.json`
- `BetterRanching/config.json`
- `ChestsAnywhere/config.json`
- `CJBCheatsMenu/config.json`
- `ContentPatcher/config.json`
- `FarmTypeManager/config.json`
- `FastAnimations/config.json`
- `FlexibleArms/config.json`
- `FriendshipNeverDecays/config.json`
- `GenericModConfigMenu/config.json`
- `GiftTasteHelper/config.json`
- `GoToBed/config.json`
- `HappyBirthday/Configs/MailConfig.json`
- `HappyBirthday/Configs/ModConfig.json`
- `LadderLocator/config.json`
- `ModShortcutReferenceHub/config.json`
- `NPCMapLocations/config.json`
- `SinZational Speedy Solutions/config.json`
- `SkipFishingMinigameDotnet5/config.json`
- `SkullCavernElevator/config.json`
- `SpaceCore/config.json`
- `Stardew Valley Expanded/[CP] Stardew Valley Expanded/config.json`
- `StardustCore/config.json`
- `UIInfoSuite2/config.json`
- `WearMoreRings/config.json`
- `[CP] Canon Friendly Dialogue Expansion/config.json`
- `[CP] DaisyNiko's Earthy Recolour/config.json`
- `[CP] Seasonal Cute Characters SVE/config.json`
