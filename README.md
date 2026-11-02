# XINGNU 默认配置安装教程（Windows PC）

适用对象：第一次安装星露谷 MOD、准备加入 XINGNU 联机农场的组员。请按顺序操作，遇到报错停在当前步骤，不要跳过检查直接进正式存档。

本方案使用游戏 **1.6.15**、**SMAPI 4.5.2** 和 [35 个 MOD／组件](MODS.md)。本包只提供说明、汉化补充及校验工具，**不包含完整 MOD 本体，也不包含房主个人配置**。默认设置不等于原版难度，部分 MOD 本身就会改变玩法。

## 先认识三类下载文件

| 文件 | 从哪里获得 | 放在哪里 |
|---|---|---|
| SMAPI 安装包 | SMAPI 官方 Releases | 解压到临时文件夹，运行安装器；不要当普通 MOD 丢进 Mods |
| 各个 MOD 的原包，包括 SVE、生日中文包 | MODS.md 中的作者链接 | 解压，将实际 MOD 文件夹放入游戏的 Mods |
| XINGNU-Default-Setup-20261102-r2.zip | 本仓库最新 Release 的 Assets | 解压到游戏 Mods 以外，运行其中的安装脚本 |

下载 ZIP 后必须先“全部解压”。不要在压缩包窗口内直接运行脚本。GitHub 自动生成的 Source code.zip 不是推荐的安装附件，请选择上表指定名称。

## 第一步：获得私有仓库访问权

1. 组员注册或登录自己的 GitHub 账号，把 GitHub 用户名告诉房主。
2. 房主进入 XINGNU 的 Settings，找到 Collaborators 或访问管理，添加该用户名。界面名称可能随 GitHub 更新变化。
3. 组员接受邮件或 GitHub 通知中的仓库邀请，再打开 [XINGNU](https://github.com/FuInSure/XINGNU)。
4. 打开 [最新 Release](https://github.com/FuInSure/XINGNU/releases/latest)，展开 Assets，下载 `XINGNU-Default-Setup-20261102-r2.zip`。

**完成标志：**能查看仓库文件并下载附件。出现 404 时先确认登录账号和邀请是否已接受；不要向别人索取房主账号、密码或令牌。本项目没有自动邀请任何组员。

## 第二步：找到游戏目录、核对版本

1. 安装并正常启动一次不带 MOD 的游戏，然后退出。
2. Steam 用户可在库中右键游戏，经“管理 → 浏览本地文件”找到游戏目录；其他启动器使用其打开安装目录的功能。
3. 正确目录中能看到 `Stardew Valley.exe` 等游戏文件。把这个文件夹路径记下来，后面的命令要使用你自己的路径。
4. 与房主核对游戏版本为 **1.6.15**。若你的版本不同，先联系房主统一方案；不要自行降级，也不要只更新某一个人的 MOD。
5. 如果玩过 MOD，把游戏目录原有的 `Mods` 文件夹改名为 `Mods-before-XINGNU` 留作备份。如果这个名字已存在，另起名称，不能覆盖旧备份。先别删除任何存档。

**完成标志：**确认了自己的游戏目录、游戏版本，旧 MOD 有独立备份。

## 第三步：安装 SMAPI 4.5.2

1. 到 [SMAPI 官方 Releases](https://github.com/Pathoschild/SMAPI/releases) 找到 4.5.2；下载 Windows 可用的安装包。
2. 将安装包解压到单独文件夹，运行里面的 Windows 安装入口（通常为 `install on Windows.bat`）。
3. 按安装程序提示选择你的游戏目录并安装。如果自动找到的目录不对，按提示指定第二步确认的目录。
4. 安装完成后查看游戏目录，应该出现 `StardewModdingAPI.exe`。SMAPI 通常也会安装 ConsoleCommands、SaveBackup 两个组件。
5. 暂时不要启动游戏。若要从 Steam 启动 MOD 游戏，按安装程序给出的本机启动参数设置；不要复制房主的硬盘路径。

**完成标志：**游戏根目录有 StardewModdingAPI.exe。如果找不到指定版本，先与房主确认，不要直接用最新版替代。

## 第四步：下载并安装原 MOD

打开 [MODS.md 版本表](MODS.md)，逐行核对名称、版本和下载来源。Nexus 下载通常需要登录自己的账号；在 Files 页面选择对应版本的手动下载文件。不要只看网页最新版本标题。

安装顺序建议：

1. 先安装基础框架：Content Patcher、Farm Type Manager、StardewHack、SpaceCore、StardustCore、Generic Mod Config Menu。各自版本以版本表为准。
2. 安装 SVE 全套及配套人物美化，见下一节。
3. 安装 Happy Birthday 及独立生日汉化，见第六步。
4. 安装版本表中的其他 MOD；ConsoleCommands 和 SaveBackup 已由 SMAPI 安装时，不再重复放一份。

### 如何判断应该复制哪层文件夹

解压一个 MOD 后，找到其中包含 `manifest.json` 的文件夹，把这个文件夹整体放进游戏 `Mods`。不要只复制 DLL，不要把 ZIP 原封不动放进去。

```text
游戏目录/
├─ Stardew Valley.exe
├─ StardewModdingAPI.exe
└─ Mods/
   ├─ Automate/
   │  ├─ manifest.json
   │  └─ Automate.dll
   └─ ContentPatcher/
      ├─ manifest.json
      └─ ...
```

不要形成 `Mods/Mods/Automate`；不要保留两个同版本或不同版本的 Automate。为方便本包校验，目录名称与 [mod-lock.json](mod-lock.json) 的 folder 一致；不要自行改中文名称。下载不到指定版本时停下来联系房主，不要用近似版本凑数。

**完成标志：**所有原 MOD 已解压到对应目录。[DEPENDENCIES.md](DEPENDENCIES.md) 列出的必需前置齐全。35 是组件数量，不代表一定要手动下载 35 个 ZIP。

## 第五步：确认 SVE 安装完整

本方案的 SVE 为 **1.15.11**，前置为 **Content Patcher 2.9.1** 和 **Farm Type Manager 1.26.1**。从 [SVE 作者页面](https://www.nexusmods.com/stardewvalley/mods/3753) 获取完整本体。

```text
Mods/
├─ ContentPatcher/
├─ FarmTypeManager/
├─ Stardew Valley Expanded/
│  ├─ Stardew Valley Expanded Code/
│  ├─ [CP] Stardew Valley Expanded/
│  └─ [FTM] Stardew Valley Expanded/
└─ [CP] Seasonal Cute Characters SVE/
```

三个 SVE 子组件各有自己的 manifest.json，缺一不能当作完整安装。人物美化 **Seasonal Cute Characters SVE 3.0.0** 从 [作者页面](https://www.nexusmods.com/stardewvalley/mods/5969) 单独下载；它必须有 SVE 才能使用。

本方案没有 Grandpa's Farm、Immersive Farm 2 Remastered 等额外农场替换包，不要因为下载页提供它们就一并安装。

**完成标志：**三个 SVE 组件和人物美化都在正确目录。加入 SVE 农场的所有玩家都必须安装相同的 SVE，不允许只有房主安装。

## 第六步：单独安装生日简体中文包

**XINGNU 中文补丁不包含这个独立内容包，必须另外下载。**

1. 确认已有 Happy Birthday **3.21.4**、StardustCore **3.1.1**、Content Patcher **2.9.1**。
2. 打开 [Happy Birthday 简体中文内容包作者页面](https://www.nexusmods.com/stardewvalley/mods/13862)，下载 **2.0.4** 的简体中文包。
3. 解压，把 `[CP] HappyBirthdayContentPack zh-CN` 放入 Mods，与 HappyBirthday 并列。

```text
Mods/
├─ HappyBirthday/
├─ StardustCore/
├─ ContentPatcher/
└─ [CP] HappyBirthdayContentPack zh-CN/
   ├─ manifest.json
   └─ content.json
```

**完成标志：**中文内容包有独立文件夹，不在 HappyBirthday 内部，也不是只放了一个 ZIP。稍后进入游戏选择简体中文。生日菜单快捷键使用 MOD 的默认设置，不要假定与房主相同。

## 第七步：解压 XINGNU 准备包并打开 PowerShell

1. 将第一步下载的 `XINGNU-Default-Setup-20261102-r2.zip` 全部解压到独立目录，例如文档目录下的 `XINGNU-Setup`。不要解压到 Mods。
2. 打开解压后的文件夹，应该直接看到：

```text
Setup-XINGNU.ps1
Check-Versions.ps1
Verify-Mods.ps1
mod-lock.json
README.md
localization/
```

3. 游戏必须关闭，包括 SMAPI 黑色控制台窗口。
4. 在文件资源管理器地址栏输入 `powershell`，按回车。这样打开的 PowerShell 工作目录就是准备包目录；不需要管理员权限。
5. 输入 `Get-Location`，确认显示的是包含 Setup-XINGNU.ps1 的文件夹。如果不对，关闭窗口，从正确文件夹重新打开。

## 第八步：先检查，再安装汉化

以下路径只是示例，不是房主路径。假设你的游戏目录为 `E:\SteamLibrary\steamapps\common\Stardew Valley`，则 Mods 路径为后面再加 `\Mods`。**替换整段双引号中的示例路径，保留双引号。**

先复制这一条执行预检：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\Setup-XINGNU.ps1 -ModsPath "E:\SteamLibrary\steamapps\common\Stardew Valley\Mods" -CheckOnly
```

- 预检只检查，不写入游戏文件。
- 看到 `Preflight passed. No files changed.` 才进入下一步。
- `ALREADY` 表示已装同一补丁，通常不需要重复安装。
- 若显示缺少 MOD、错误版本或原文件不匹配，先按后面的排错表处理，不要删除报错检查。

预检通过后，使用相同路径执行正式安装（去掉末尾的 `-CheckOnly`）：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\Setup-XINGNU.ps1 -ModsPath "E:\SteamLibrary\steamapps\common\Stardew Valley\Mods"
```

脚本核对版本，备份并安装中文补充，然后比较非配置文件。**不会写入或同步房主的快捷键、倍率、戒指槽数和作弊开关。** 新装 MOD 使用作者自带或首次运行生成的默认配置，已有配置也不会被自动重置。

完成标志为 `All non-configuration baseline files match`。这只表示指定文件校验通过，不代表真实联机已经测试。出现 `DIFFERENT` 等差异时保留完整错误报告交给房主，不要进正式档。

汉化原文件备份位于 Mods 上一级、名称以 `XINGNU-translation-backup-` 开头的目录。不要在未确认运行正常前删除。恢复步骤见 [汉化说明](localization/README.md)。

## 第九步：启动并确认 MOD 加载

1. 双击游戏目录的 `StardewModdingAPI.exe`。会出现 SMAPI 控制台以及游戏窗口；单独打开 Stardew Valley.exe 不会加载这些 MOD。
2. 查看控制台是否有红色报错、缺少依赖或 `Skipped mods` 等跳过加载提示。出现错误先解决，不要只确认游戏能打开。
3. 在游戏中选择简体中文。通过 MOD 设置菜单核对自己实际的快捷键和功能，参考 [各 MOD 使用指南](MOD-GUIDE.md)。
4. 本包使用默认设置，可能与房主习惯不同。不能假定是 F6/F7/F8、晶球 20 倍速或 6 个戒指槽。CJB、跳过钓鱼等 MOD 自身的默认行为也应由团队讨论确认。

**完成标志：**游戏能正常进入菜单，必需 MOD 没被跳过。能启动不等于全套多人兼容，需要下一步测试。

## 第十步：先测试联机，再正式开档

房主：在“合作 → 主持”创建新测试农场，为组员准备足够的小屋，使用游戏邀请功能把组员拉进来。暂不使用旧 SVE 存档做第一次安装测试。

组员：使用自己的 Steam／游戏平台账号启动相同配置的游戏，从“合作 → 加入”加入房主；按平台可用方式使用邀请或邀请码。不需要复制房主存档，也不需要登录房主 Nexus、Stardrop 或游戏账号。

一起检查：

- 能同时进入农场及 SVE 地点，与 NPC 正常互动。
- 共享箱子里的物品增减一致，机器产出和消耗不重复。
- 钓鱼、矿洞电梯及相关界面没有明显异常。
- Go To Bed 是否能正确返回组员小屋；默认值不能保证适合联机，不要依赖未经测试的自动传送。
- 所有人睡觉推进一天，房主正常保存退出；再次主持，组员重新加入，内容和进度正常。

测试通过后再创建正式农场。以后更新 MOD 要全员协调并先备份，不能一人单独换最新版。

## 常见问题：看到什么，该做什么

| 提示／现象 | 处理方法 |
|---|---|
| GitHub 404 | 登录自己的账号并确认接受仓库邀请。 |
| 找不到 Setup-XINGNU.ps1 | 没解压或 PowerShell 不在准备包目录；回到第七步。 |
| 路径不存在 | ModsPath 应指向自己的 Mods 文件夹，不是下载目录或 ZIP；路径含空格须保留引号。 |
| MISSING MOD | 按版本表补装，检查是否多套了一层目录。 |
| WRONG VERSION/ID | 下载版本或组件不对；核对 manifest.json 的 Version 和 UniqueID。 |
| Original file mismatch | 同版本也可能是不同构建或已改过，不能强制安装；把相对文件名和错误文本交给房主适配。 |
| Existing translation differs | 已有另一份中文文件；先保留备份并确认来源，不能直接删掉来凑通过。 |
| DIFFERENT | 文件与基线仍不一致；保存报告给房主，不要当作已完全一致。 |
| EXTRA | 多出文件；额外 DLL 或 manifest 会阻止通过，其他额外文件也应确认来源。 |
| 生日仍是英文 | 确认第六步独立中文包已加载，语言选中文；重复安装 XINGNU 补丁不能替代它。 |
| 已装过旧配置同步包 | 新版不会抹掉旧配置，按 [默认配置政策](CONFIGURATION.md) 恢复备份或重置。 |

不需要为了运行此脚本永久修改系统执行策略；命令里的 Bypass 只用于本次启动的 PowerShell 进程。如果安全软件阻止下载或运行，先核对来源及文件，不要直接关闭系统防护。

## 已知边界及内容来源

本方案已验证本地隔离副本中的补丁重建、重复安装和错误拦截，**尚未重新下载全部作者原包验证从零复现，也未进行真实双机联机**。遇到文件不匹配仍需房主协助，不能保证每位新用户一次成功。详细情况见 [VALIDATION.md](VALIDATION.md)。

SVE 作者为 FlashShifter 及贡献者，人物美化作者为 Poltergeister，其他作者见 MODS.md。本仓库不转载完整 SVE 或其他第三方 MOD，私有仓库不改变其许可。不玩 SVE 时需要全员制定另一份方案，不能只让某位组员漏装，也不能从已玩 SVE 的正式档直接删除它。
