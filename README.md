# XINGNU 联机准备包

基线：Stardew Valley 1.6.15、SMAPI 4.5.2、35 个 MOD／组件。清单来自 2026-11-02 的实际安装文件，包含本地汉化修改。**尚未完成双人联机实测，不能保证所有 MOD 无冲突。**

## 下载入口

新组员请到 [最新 Release](https://github.com/FuInSure/XINGNU/releases/latest) 下载 **XINGNU-Team-Setup-20261102.zip**，完整安装顺序见下文。旧版分散附件保留作历史，不再作为推荐入口。

## 安装中文补充补丁

已安装对应版本原 MOD 后，可使用 [中文补丁安装说明](localization/README.md)。补丁覆盖 10 个 MOD、11 个文件，包括自动钓鱼机中文及本地补充的界面翻译；不含完整 MOD 本体。请关闭游戏，先执行检查模式，再安装。文件不匹配会停止，禁止强制套用；独立生日中文内容包仍从作者页面下载。

## 生日独立汉化包：需要另行下载

**XINGNU 中文补充补丁不包含生日独立汉化包。组员需要从 [Happy Birthday 简体中文内容包作者页面](https://www.nexusmods.com/stardewvalley/mods/13862) 单独下载并安装，不能只装 Happy Birthday 本体或 XINGNU 中文补丁。**

本方案使用 **Happy Birthday zh-CN Translation Content Pack 2.0.4**，搭配 **Happy Birthday 3.21.4**、**StardustCore 3.1.1** 和 **Content Patcher 2.9.1**。下载时核对版本和语言，不要误选其他语言；找不到对应版本先与房主确认。

1. 退出游戏，先安装 Happy Birthday 本体、StardustCore 和 Content Patcher。
2. 从上述作者页面下载简体中文内容包，解压后把含 manifest.json 的 `[CP] HappyBirthdayContentPack zh-CN` 文件夹放进游戏 `Mods`，与 `HappyBirthday` 文件夹并列。不要放进 HappyBirthday 内部，也不要形成多层同名目录。
3. 游戏语言选择简体中文，通过 SMAPI 启动，检查该中文内容包没有被跳过或报告缺少依赖，再用 F7 查看生日相关菜单。菜单能打开只能验证入口，祝福、信件及生日事件需触发后检查。
4. 如果仍显示英文，先检查中文包版本、目录层级和 SMAPI 加载日志，不要反复安装 XINGNU 补丁来代替这个独立内容包。

预期目录：

```text
Mods/
├─ ContentPatcher/
├─ StardustCore/
├─ HappyBirthday/
└─ [CP] HappyBirthdayContentPack zh-CN/
   ├─ manifest.json
   └─ content.json
```

## 各 MOD 的功能与操作

请阅读 [35 个 MOD／组件的详细使用指南](MOD-GUIDE.md)：包含用途、操作步骤、当前快捷键与数值、联机注意事项。新成员先记住 F6（快捷键表）、P（MOD 设置）、B（箱子）；CJB 等玩法修改开关请先阅读对应章节。

## 组员从零安装：唯一推荐流程

**只下载最新 Release 的 `XINGNU-Team-Setup-20261102.zip`。** 它把指南、版本检查、汉化补丁、30 份通用配置、安装脚本和校验清单放在一起。旧 Setup-r1～r4 和独立 Chinese-Patch 包属于历史版本，新组员不用再组合下载。此统一包仍不包含第三方 MOD 本体。

### 先取得私有仓库访问权

每位组员准备自己的 GitHub 账号，把用户名交给房主。房主在 XINGNU 仓库 Settings → Collaborators 中添加对应账号，组员登录自己的账号并接受邀请后才能访问 Releases。GitHub 页面布局可能变化，也可在仓库设置中搜索 Collaborators。未登录或未接受邀请时，私有仓库可能显示 404。不要分享房主账号、密码或令牌。**本项目没有自动邀请任何组员。**

### 按顺序安装

1. 安装 Windows PC 版游戏，启动原版一次并退出，确认与房主同为 **1.6.15**。本方案未验证手机、主机或跨平台联机。
2. 安装 **SMAPI 4.5.2**。从 [SMAPI 官方页面](https://smapi.io/) 获取；历史版本可查 [官方 Releases](https://github.com/Pathoschild/SMAPI/releases)。无法取得指定版本时先统一协商升级，不能只换一个人的版本。
3. 退出游戏，把原有 Mods 文件夹改名备份，建立干净的 Mods。按 [35 项版本表](MODS.md) 下载对应版本，参考 [必需前置表](DEPENDENCIES.md) 安装。Console Commands、Save Backup 随 SMAPI 安装；SVE 本体自带三个组件，不是重复下载三次。
4. **单独安装生日简体中文内容包 2.0.4**：[作者下载页](https://www.nexusmods.com/stardewvalley/mods/13862)。按上文“生日独立汉化包”说明放置。XINGNU 补丁不替代它。
5. 从本仓库最新 Release 下载统一准备包，解压到独立文件夹，**不要解压进 Mods**。里面应有 Setup-XINGNU.ps1、Check-Versions.ps1、Verify-Mods.ps1、localization 和 configuration 两个文件夹。
6. 保持游戏关闭，在准备包文件夹打开 PowerShell，先做无写入检查：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\Setup-XINGNU.ps1 -ModsPath "你的游戏目录\Mods" -CheckOnly
```

7. 全部检查通过后，同一命令去掉 `-CheckOnly` 正式安装。它按 **核对 35 项版本 → 预检所有补丁与配置 → 安装中文补充 → 同步 30 份配置 → 严格比对房主文件** 的顺序运行。修改前分别备份中文文件及配置。配置同步会覆盖现有快捷键和功能选择，详情见 [配置说明](CONFIGURATION.md)。
8. 最后报告 `All host baseline files match` 才表示清单中的文件与房主快照一致；不同文件必须查看报告，不能把错误窗口关闭后视作成功。额外 DLL／manifest 会使严格校验失败；其他额外文件仍需审查。详见 [排错及验证范围](VALIDATION.md)。
9. 选择中文，用游戏根目录的 StardewModdingAPI.exe 启动，检查 SMAPI 红色错误和被跳过的 MOD。普通 Stardew Valley.exe 不会加载这套 MOD。Steam 启动参数按 SMAPI 安装程序给出的**本机路径**配置，不复制房主的路径。
10. 房主和一位组员先在新测试农场验证地图、箱子、机器、钓鱼、矿洞电梯和睡觉结算，退出后重新加入，确认存档能恢复。通过后再邀请所有人进正式档。组员无需复制房主单人存档、Nexus 或 Stardrop 账号。

**汉化原文件不匹配时，安装会停止，不能强制套用。** 本地备份的重建测试已完成，但未从作者网站逐个重新下载全部原包验证。尤其部分本地安装有历史修订，仅相同版本号不保证二进制相同。请把具体不匹配的相对文件名反馈给房主，基于该原文件重新制作补丁；不要上传整套私人存档或凭据。

## SVE 必装说明：本方案包含 SVE

**组员若要加入本方案的 SVE 农场，必须自行安装完整 SVE 及其前置。下载本仓库或 Release 指南 ZIP 不会安装 SVE，也不会安装任何 MOD 本体。** 所有人使用下列相同版本；不要一个人直接改用最新版。

| 安装项 | 本方案版本 | 用途与来源 |
|---|---|---|
| SMAPI | 4.5.2 | 加载器，[官方网站](https://smapi.io/) |
| Content Patcher | 2.9.1 | 加载 SVE 内容包，[作者页面](https://www.nexusmods.com/stardewvalley/mods/1915) |
| Farm Type Manager | 1.26.1 | 加载 SVE 世界生成包，[作者页面](https://www.nexusmods.com/stardewvalley/mods/3231) |
| Stardew Valley Expanded | 1.15.11 | 完整本体，包含下面三个组件，[作者页面](https://www.nexusmods.com/stardewvalley/mods/3753) |
| Seasonal Cute Characters SVE | 3.0.0 | 本方案的配套人物美化，必须有 SVE 才能加载，[作者页面](https://www.nexusmods.com/stardewvalley/mods/5969) |

安装顺序：先安装 SMAPI，再解压 Content Patcher 和 Farm Type Manager 到游戏的 Mods 文件夹，然后解压完整 SVE，最后安装配套美化。下载时核对文件版本；找不到指定旧版时先与房主协商全员统一升级，不能静默换成新版。

本方案的目录结构应为（每个组件目录内都有 manifest.json）：

```text
Stardew Valley/
├─ StardewModdingAPI.exe
└─ Mods/
   ├─ ContentPatcher/
   ├─ FarmTypeManager/
   ├─ Stardew Valley Expanded/
   │  ├─ Stardew Valley Expanded Code/
   │  ├─ [CP] Stardew Valley Expanded/
   │  └─ [FTM] Stardew Valley Expanded/
   └─ [CP] Seasonal Cute Characters SVE/
```

- 三个 SVE 组件属于同一套扩展，不能只安装其中一个；不要形成 Mods/Mods 嵌套或保留重复版本。
- 依赖方向：SVE 使用 Content Patcher、Farm Type Manager；人物美化依赖 SVE。框架不是依赖 SVE 的附属品。
- 其余本方案 MOD 没有声明以 SVE 为必需前置，但其他依赖仍按完整清单安装。
- 本方案不含 Grandpa's Farm、Immersive Farm 2 Remastered 等额外农场替换包，不必为安装 SVE 擅自加装它们。
- 首次启动检查 SMAPI 中三个 SVE 组件及人物美化是否成功加载；出现缺少依赖或跳过加载时先修复，再加入农场。
- 本地做过汉化补充，作者原包的文件哈希可能不同；版本相同不代表已经同步本地汉化，也不代表校验已全部通过。

**如果全员决定改玩无 SVE 的新农场**：共同移出整个 Stardew Valley Expanded 目录及 [CP] Seasonal Cute Characters SVE。按本方案计数相当于移除 4 个组件；原 35 项校验清单也需重建。不要只让某一位组员不装 SVE，也不要直接从已经使用 SVE 的正式存档移除。

SVE 作者为 FlashShifter 及其贡献者；程序组件署名还包括 Esca、kittycatcasey，人物美化作者为 Poltergeister。本项目仅整理使用说明与安装清单，不是 SVE 官方发行。SVE 安装包未上传本仓库，原因和作者分发条款见下文“内容与分发”。

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

已完成全部必需依赖（包括 ContentPackFor）核对、隔离目录中的统一安装与重复安装、错误版本/补丁输入拦截及额外 DLL 检测；完整边界见 VALIDATION.md。未完成作者原包全量重新下载验证及两台电脑联机测试。
