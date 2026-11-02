# XINGNU 联机准备包

基线：Stardew Valley 1.6.15、SMAPI 4.5.2、35 个 MOD／组件。清单来自 2026-11-02 的实际安装文件，包含本地汉化修改。**尚未完成双人联机实测，不能保证所有 MOD 无冲突。**

## 组员安装步骤（Windows PC）

1. 安装正版游戏，与房主核对版本。先启动原版一次并退出。不同平台能否互联需另行确认，本包不面向手机、主机。
2. 从 https://smapi.io/ 安装与基线一致的 SMAPI 4.5.2；若无法取得此版本，先与房主协商统一升级，不单独混用新旧版本。
3. 退出游戏，把自己原有的 `Mods` 文件夹改名留作备份。不要将旧 MOD 混进这套包。
4. 按 `MODS.md` 从作者页面取得相同版本，保持清单中的子目录结构。SMAPI 自带 ConsoleCommands 和 SaveBackup，不需要重复下载。
5. 房主本地完整 ZIP 的结构是 `Mods/各MOD目录`，解压后的 Mods 应放到游戏根目录，避免出现 `Mods/Mods`。完整包未上传此仓库，取得各作者允许分发的文件前，请使用原作者下载渠道。
6. 下载本仓库后，在 PowerShell 执行 `powershell -ExecutionPolicy Bypass -File .\Verify-Mods.ps1 -ModsPath "你的游戏目录\Mods"`。首次启动前核对；本地汉化 DLL 与原作者下载的 DLL 哈希不同是预期差异，但不能当作完全同一套文件。校验会明确列出差异。
7. 使用 `StardewModdingAPI.exe` 启动，查看 SMAPI 是否有红色错误、缺少依赖或被跳过的 MOD。正常后才加入房主。
8. 通过游戏“合作 → 加入”使用房主邀请。无需登录房主的 Steam、Nexus 或 Stardrop 账号，也不需要复制房主的单人存档。

## 房主创建联机存档

1. 先备份自己已有存档；用相同 MOD 基线启动。
2. 在“合作 → 主持”创建新农场，准备足够的组员小屋。不要用现有单人档做第一次兼容测试。
3. 当前清单没有 Grandpa's Farm 或 Immersive Farm 2 Remastered，创建时使用游戏原有农场类型，不额外安装农场替换包。
4. 先让一名组员加入测试：地图通行、SVE NPC、箱子与机器、自动钓鱼机、矿洞电梯、睡觉结算，以及退出后重进。通过后再正式开档。
5. 升级时全员同一批升级、保留旧版本和存档备份，不在游玩中途单独更新或移除内容 MOD。

## 已知需要注意的设置

- Go To Bed 当前配置固定传送到 `FarmHouse` 的 (3,10)，不保证适合农场帮手的小屋。正式联机前，所有人暂时统一禁用此 MOD（移到 Mods 外）；若要启用，先验证各人的传送目标。此操作会使校验报告该 MOD 缺失，属于有意调整。
- CJB Cheats Menu、自动钓鱼、动画加速、强制竖井等会影响玩法或时序。全员约定规则，首次测试不要切换时间、传送或强制竖井。当前 LadderLocator 的 ForceShafts 为 false。
- 本地汉化包含 DLL 修改，文件校验不等于运行验证。若某个汉化 MOD 报错，所有人一起恢复同版本原 DLL 后重试。
- MOD 版本一致能减少差异，不能证明所有组合兼容。双方都保留各自 SMAPI 日志用于定位问题。

## 内容与分发

本私有仓库提供清单、说明及校验脚本，不含游戏、账号凭据、存档或完整第三方 MOD 重上传。
SVE 的 Nexus 页面明确限制将其整包上传到其他网站；GitHub 源码仓库的许可与 Nexus 安装包的资源许可应分别核实。其余作品未逐项确认再分发授权，暂提供原作者链接。私有仓库并不会自动改变作者许可。

本地完整包保留当前 MOD 与通用配置，排除了隐藏备份目录、缓存、日志、`.save`、HappyBirthday 玩家记录、`.bak`、`.pdb` 和 desktop.ini。未改动正在使用的 MOD 文件。

## 依据与验证边界

- https://wiki.stardewvalley.net/Modding:Player_Guide/Getting_Started
- https://www.nexusmods.com/stardewvalley/mods/3753 （Permissions and credits）
- `mod-lock.json`：版本、作者、来源链接及完整包内各文件 SHA-256。

已验证本地包 ZIP CRC 和所有打包文件的 SHA-256，检查了清单声明的必需依赖是否存在；未完成两台电脑联机或全部 MOD 的多人功能审核。
