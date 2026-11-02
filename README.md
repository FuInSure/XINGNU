# XINGNU 默认配置安装指南

本方案固定游戏 1.6.15、SMAPI 4.5.2 和 [35 项 MOD／组件](MODS.md)，保留中文补充，**不携带房主个人设置**。本包不含第三方 MOD 本体。

## 私有仓库访问

组员使用自己的 GitHub 账号，房主在仓库 Settings → Collaborators 邀请，组员接受后才能下载。未登录或未接受邀请可能看到 404。不要共享账号密码。本项目未自动邀请组员。

## 从零安装顺序

1. 安装并启动原版游戏一次，确认 1.6.15，然后退出。安装 [SMAPI 4.5.2](https://github.com/Pathoschild/SMAPI/releases)。
2. 把原有 Mods 改名备份，在干净 Mods 中按 [版本表](MODS.md) 及 [必需前置表](DEPENDENCIES.md) 安装作者原包。不要混入其他版本，不复制房主 config.json。
3. SVE 1.15.11 需要 Content Patcher 2.9.1、Farm Type Manager 1.26.1。完整 SVE 包内应有 Stardew Valley Expanded Code、[CP] Stardew Valley Expanded、[FTM] Stardew Valley Expanded 三个组件。配套 Seasonal Cute Characters SVE 3.0.0 还依赖 SVE。本方案不含额外农场替换包。
4. **生日简体中文包必须单独下载**：[作者页面](https://www.nexusmods.com/stardewvalley/mods/13862)，使用 2.0.4，搭配 Happy Birthday 3.21.4、StardustCore 3.1.1 和 Content Patcher。把 `[CP] HappyBirthdayContentPack zh-CN` 放入 Mods，与 HappyBirthday 并列。XINGNU 补丁不包含它。
5. 下载 [最新 Release](https://github.com/FuInSure/XINGNU/releases/latest) 的 **XINGNU-Default-Setup-20261102.zip**，解压到 Mods 以外。不要使用旧配置同步包。
6. 游戏关闭时，在准备包目录打开 PowerShell，运行预检：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\Setup-XINGNU.ps1 -ModsPath "你的游戏目录\Mods" -CheckOnly
```

7. 检查通过后去掉 `-CheckOnly` 执行。脚本核对版本、安装汉化并比较非配置文件；不写入个人配置。原文件不匹配会停止，不要强制覆盖。
8. 使用 StardewModdingAPI.exe 启动并选择中文，由 MOD 使用自带或首次生成的默认配置。快捷键及功能数值以各自设置页为准，**不保证是房主的 F6/F7/F8、20 倍动画或 6 戒指槽**。Steam 启动参数使用 SMAPI 安装程序提供的本机路径。
9. 检查 SMAPI 红色错误与跳过加载信息。房主用“合作 → 主持”创建新测试农场、准备小屋；组员加入后测试地图、共享箱子、机器、钓鱼、电梯、睡觉保存和退出重进，再开正式档。不要把房主单人存档复制给组员。

## 已装旧版时

新版不会自动清除旧配置。恢复或重置方法见 [默认配置政策](CONFIGURATION.md)。本机原有游戏配置未被本次制作修改。

## 功能与注意事项

- [逐项功能说明](MOD-GUIDE.md)；快捷键和数值均以 MOD 默认配置及自己的设置为准。
- 默认值不等于原版难度；作弊、跳过钓鱼等 MOD 本身可能改变玩法，开档前共同核对。
- Go To Bed 的传送目标需先验证能正确返回组员小屋，不能假定支持每个农场帮手。未经测试不建议正式档依赖它。
- 不装 SVE 的新方案需全员同时移除 SVE 三组件和配套 SVE 人物美化，并重新制定校验清单；不要从既有 SVE 存档直接删除。
- MOD 更新可能覆盖汉化，先统一版本并备份存档。

## 内容、署名及验证范围

SVE 作者为 FlashShifter 及贡献者，人物美化作者为 Poltergeister；其他作者见 MODS.md。本仓库只提供指南、校验与中文补充，不转载 SVE 完整包。私有仓库不改变作者许可。

已用本地隔离副本验证补丁重建及检查流程，**未完成全量作者原包重新下载复现，也未完成真实双机联机**。同版本原包可能与补丁输入不同。详细边界及错误处理见 [验证说明](VALIDATION.md)。
