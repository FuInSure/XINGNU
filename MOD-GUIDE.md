# MOD 功能与使用指南

本指南对应 2026-11-02 的 35 个 MOD／组件和当前本地配置；从作者处重新下载时默认快捷键、倍率和功能开关可能不同。没有说明为实测的联机行为均需在测试档验证。修改配置前退出游戏，或使用该 MOD 支持的设置界面保存。

## 先记住这些键

| 按键 | 用途 |
|---|---|
| F6 | 本包快捷键速查表 |
| P | 支持 GMCM 的 MOD 设置 |
| F8 | CJB 菜单（当前默认传送页） |
| F7 | 玩家生日菜单 |
| B / U | 远程箱子 / 自动化连接覆盖层 |
| O / H | 日历 / 委托板 |
| F9 / 小键盘 1 | 催熟附近作物 / 催长附近树木，勿误触 |
| 反引号（OemTilde） | 强制竖井开关，当前关闭，勿误触 |

按键有界面上下文：例如 M 平时开地图、箱子里整理；Tab 平时切工具栏、地图里开设置。键盘布局不同，OemTilde / OemPipe 对应位置可能不同。

## 逐项说明

### 01. 自动钓鱼机 — Auto Fisher / Авто-рыбак

版本：1.1.2；目录：`AutoFisher`。

- **功能**：在水边放置机器，利用相邻箱子里的鱼竿和耗材自动钓鱼。
- **怎么用**：钓鱼等级达到 10 后留意威利的配方信；阅读后在制作菜单查找机器。放在室外可钓鱼水域附近，紧邻箱子中放入可装鱼饵的鱼竿、鱼饵和煤，并留空位收鱼。
- **当前配置**：当前每轮 30 游戏分钟，水域搜索范围 5 格，每轮耗煤 1、鱼饵 1，每条鱼经验 5。没有专用快捷键；缺料或箱满时查看机器提示。
- **联机／注意事项**：多人下先测试一台的消耗与产出是否重复，再铺设大量机器；本组合尚未实测。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/48820)。

### 02. 机器自动化 — Automate

版本：2.6.1；目录：`Automate`。

- **功能**：从相邻箱子取原料投入支持的机器，再把成品送回箱子。
- **怎么用**：把箱子与机器紧邻摆放，把原料放入箱子；连在一起的机器可形成自动化组。按 U 查看连接覆盖层。
- **当前配置**：已启用，连接地板名单为空；不要假定任意地板都能当连接器。
- **联机／注意事项**：共用原料先约定用途，避免贵重物品进入加工链。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/1063)。

### 03. 自动开关门 — AutomaticGates

版本：2.5.5；目录：`AutomaticGates`。

- **功能**：接近栅栏门时自动开门，离开后自动关门。
- **怎么用**：正常走过门即可。数字小键盘 9 切换调试覆盖层，0 切换覆盖层滚动提示。
- **当前配置**：GateDelay=0；覆盖层相关操作含左键加入忽略、右键移除忽略、小键盘加减号调整延迟。普通游玩无需打开覆盖层。
- **联机／注意事项**：先验证组员过门与门状态同步。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3109)。

### 04. 牧场照料提示 — Better Ranching

版本：2.0.5；目录：`BetterRanching`。

- **功能**：用图标提示动物是否需要抚摸、是否有产物，并减少无效收获操作。
- **怎么用**：进入畜棚或靠近动物查看头顶提示；仍按游戏正常方式抚摸、挤奶和剪毛。
- **当前配置**：爱心、产物和宠物提示已开启。
- **联机／注意事项**：它主要提示，不是自动照料；本包自动照料来自 CJB，可能使提示很快消失。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/859)。

### 05. 远程箱子 — Chests Anywhere

版本：1.30.1；目录：`ChestsAnywhere`。

- **功能**：无需走到箱子前即可访问可用储物容器。
- **怎么用**：按 B 打开；左右切箱子、上下切分类；N 编辑箱子，M 整理，Ctrl+F 搜索。
- **当前配置**：范围 Unlimited，启用出货箱，默认重开上次箱子。
- **联机／注意事项**：多人共用箱子先约定分类，不要擅自出售他人物品；可访问范围与同步以游戏实际情况为准。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/518)。

### 06. CJB 功能菜单 — CJB Cheats Menu

版本：1.42.0；目录：`CJBCheatsMenu`。

- **功能**：修改生命、体力、时间、传送、农业和建筑等行为。
- **怎么用**：F8 打开菜单，默认进入传送页；F9 催熟附近作物，小键盘 1 催长附近树木。
- **当前配置**：已开启无限生命、镰刀收获、鱼具耐久、不掉好感、耐久栅栏、即时建造、自动喂养/抚摸/浇水、宠物碗自动加水及无限干草。无限体力、冻结时间未开。
- **联机／注意事项**：涉及共享农场与进度的操作须先统一规则。不要同时多人改时间或催熟；这些并非原版难度。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/4)。

### 07. SMAPI 控制台命令 — Console Commands

版本：4.5.2；目录：`ConsoleCommands`。

- **功能**：提供诊断及游戏管理命令。
- **怎么用**：普通游玩无需操作；需要排障时在 SMAPI 窗口输入 help 查询命令。
- **当前配置**：随 SMAPI 安装，没有游戏内热键。
- **联机／注意事项**：不要在正式档随意执行生成物品或改进度的命令。

### 08. 内容补丁框架 — Content Patcher

版本：2.9.1；目录：`ContentPatcher`。

- **功能**：加载地图、对白、贴图及数据内容包。
- **怎么用**：自动工作，无需单独打开；SVE、美化和对话包依赖它。
- **当前配置**：调试功能关闭，配置中 F3 是调试键，不是正常玩法入口。
- **联机／注意事项**：不能只移除此框架却保留依赖它的内容包。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/1915)。

### 09. 生成管理框架 — Farm Type Manager (FTM)

版本：1.26.1；目录：`FarmTypeManager`。

- **功能**：按内容包规则生成采集物、矿石、怪物等。
- **怎么用**：自动工作；玩家无需自行配置生成坐标。
- **当前配置**：内容包加载开启。
- **联机／注意事项**：SVE 的 FTM 组件需要它；不要把旧存档的生成记录复制给新组员。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3231)。

### 10. 动画加速 — Fast Animations

版本：1.16.2；目录：`FastAnimations`。

- **功能**：加快多种动作与界面动画。
- **怎么用**：照常敲晶球、吃东西或使用设施即可；可通过支持的 MOD 设置项调整倍率。
- **当前配置**：晶球 20 倍、收获 3 倍、吃喝 5 倍、锻造 8 倍；工具挥动、武器挥动、钓鱼动作和实验事件速度保持 1 倍。暂停热键未绑定。
- **联机／注意事项**：先测试共享事件与设施，出现时序异常时全员统一降低相关倍率。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/1089)。

### 11. 交互距离调整 — Flexible Arms

版本：7.3；目录：`FlexibleArms`。

- **功能**：调整玩家可触及的距离。
- **怎么用**：正常使用工具或交互，无额外按键；配置 MaxRange 控制距离。
- **当前配置**：当前 MaxRange=1.4，并没有设置超远距离。
- **联机／注意事项**：不能借此推断所有工具、地图障碍都能被跨越。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/20902)。

### 12. 好感不衰减 — Friendship Never Decays

版本：1.1.1；目录：`FriendshipNeverDecays`。

- **功能**：防止日常未互动导致的好感下降。
- **怎么用**：装好后自动生效，仍需通过聊天、送礼等增加好感。
- **当前配置**：配偶、恋爱对象、村民和农场动物均设为不掉好感；AnimalsMustBeFed=true，动物未喂食是例外。
- **联机／注意事项**：与 CJB 的不掉好感功能重叠，排查时应同时检查两边。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/47129)。

### 13. 通用 MOD 设置菜单 — Generic Mod Config Menu

版本：1.16.0；目录：`GenericModConfigMenu`。

- **功能**：让支持该接口的 MOD 在游戏中显示设置界面。
- **怎么用**：按 P 打开，或从标题界面进入 MOD 设置；选择对应 MOD 后修改并保存。
- **当前配置**：不是所有 MOD 都会出现；未接入者需退出游戏再编辑其 config.json。
- **联机／注意事项**：改共享玩法配置前统一约定；设置可能只影响本机。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/5098)。

### 14. 礼物喜好提示 — Gift Taste Helper Continued x2

版本：1.2.5；目录：`GiftTasteHelper`。

- **功能**：在日历和社交页面显示 NPC 的礼物喜好。
- **怎么用**：把鼠标移到对应人物位置，查看提示后挑选礼物。
- **当前配置**：日历和社交页都开启；不限制为已知礼物，但不显示未认识 NPC 的礼物。
- **联机／注意事项**：可能提前透露喜好，介意探索过程的玩家可自行关闭提示。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/21001)。

### 15. 自动回床 — Go To Bed

版本：1.2.0；目录：`GoToBed`。

- **功能**：在设定时刻传送到指定位置。
- **怎么用**：当前凌晨 1:20 提醒，1:40 传送（配置时间分别为 2520、2540）。
- **当前配置**：固定目标是 FarmHouse 的 (3,10)，并不是按每位玩家的小屋自动定位。
- **联机／注意事项**：首次联机建议全员先移到 Mods 外禁用；验证各自目标后再启用。说明不代表已经替你禁用。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/40691)。

### 16. 玩家生日 — Happy Birthday

版本：3.21.4；目录：`HappyBirthday`。

- **功能**：给玩家增加生日、祝福和相关内容。
- **怎么用**：按 F7 打开生日相关菜单，按界面设置自己的生日；生日当天与 NPC 互动。
- **当前配置**：祝福最低好感 2 心，社区生日派对最低好感 5 心；条件是否满足以游戏事件为准。
- **联机／注意事项**：组员各自设置生日，不复制房主生日记录；相关事件尚未联机实测。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/520)。

### 17. 梯子定位与矿石雷达 — LadderLocator

版本：1.5.2；目录：`LadderLocator`。

- **功能**：高亮可能通向下一层的石头，并提供矿石雷达和强制竖井开关。
- **怎么用**：左 Shift+反引号切高亮方式，左 Alt+反引号切透明度；左 Ctrl+左 Shift+反引号切矿石雷达。
- **当前配置**：当前绿色矩形高亮、不透明度 0.45、雷达关闭、强制竖井关闭。单按反引号会切换强制竖井；它通常位于 Esc 下方，键名 OemTilde。
- **联机／注意事项**：强制竖井会改变洞穴行为，不只是高亮；不要误触。高亮不保证每块石头一定出梯子。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3094)。

### 18. 快捷键速查表 — Mod Shortcut Reference Hub

版本：1.2.0；目录：`ModShortcutReferenceHub`。

- **功能**：把本包常用快捷键集中显示。
- **怎么用**：F6 打开或关闭，忘记按键时先查它。
- **当前配置**：表中部分条目为手动维护；改过其他 MOD 按键后需同步更新速查表。
- **联机／注意事项**：速查表文字不会替其他 MOD 实际绑定快捷键。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/41846)。

### 19. 地图 NPC 定位 — NPC Map Locations

版本：3.5.2；目录：`NPCMapLocations`。

- **功能**：在地图上显示人物等标记，并提供小地图。
- **怎么用**：正常打开地图查看；地图内 Tab 打开相关设置；反斜杠键（OemPipe）切小地图，Space 与名字提示有关。
- **当前配置**：小地图默认关闭，显示书商、旅行商人、马和农场建筑。
- **联机／注意事项**：隐藏或剧情 NPC 不一定显示；不能把未显示当作 MOD 没加载。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/239)。

### 20. SMAPI 存档备份 — Save Backup

版本：4.5.2；目录：`SaveBackup`。

- **功能**：自动保留存档备份，供出问题后恢复。
- **怎么用**：随 SMAPI 运行，无热键；恢复前先关闭游戏并另外保存当前存档。
- **当前配置**：具体备份路径与保留情况看 SMAPI 的 save-backups 目录。
- **联机／注意事项**：联机农场由房主保管主存档；此组件不等于实时云同步。

### 21. 加载优化 — SinZational Speedy Solutions

版本：1.1.0；目录：`SinZational Speedy Solutions`。

- **功能**：通过音频、地图和图像缓存等方式减少部分加载开销。
- **怎么用**：自动工作，无需日常操作；在设置中按需调整缓存开关。
- **当前配置**：音频缓存/并行、地图读写缓存、图像缓存及地图加载绕过均开启。
- **联机／注意事项**：性能收益依机器与 MOD 组合变化；不能保证降低网络延迟。排障时按项目关闭优化，不复制他人缓存。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/37301)。

### 22. 跳过钓鱼小游戏 — SkipFishingMinigame

版本：0.7.4；目录：`SkipFishingMinigameDotnet5`。

- **功能**：保留抛竿等流程，跳过控制绿条追鱼的小游戏。
- **怎么用**：正常持竿抛线；当前自动上钩开启，操作键可切换自动上钩。
- **当前配置**：最低捕获次数 0，完美捕获概率 100%，不忽略宝箱。
- **联机／注意事项**：这和 AutoFisher 不同：此 MOD 用于自己持竿，AutoFisher 是放置机器；明显改变钓鱼难度。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/2697)。

### 23. 骷髅洞穴电梯 — SkullCavernElevator

版本：1.6.2；目录：`SkullCavernElevator`。

- **功能**：在骷髅洞穴使用电梯返回已解锁的深层。
- **怎么用**：先按正常进度解锁沙漠与洞穴；进入第一层找电梯并选择可用楼层。
- **当前配置**：每 5 层一站，Difficulty=1，第一层入口开启，每段费用 0，即当前免费。
- **联机／注意事项**：不代表未到过的层数自动解锁；组员楼层解锁与同步应先测试。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/963)。

### 24. 扩展功能框架 — SpaceCore

版本：1.28.4；目录：`SpaceCore`。

- **功能**：为依赖它的 MOD 提供自定义技能、界面及其他扩展能力。
- **怎么用**：后台自动工作；不需要为了使用 SVE 单独打开它。
- **当前配置**：自定义技能页面开启；L 是社交交互修饰键，不是通用功能菜单。
- **联机／注意事项**：保持依赖版本一致，勿随意移除。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/1348)。

### 25. SVE 程序组件 — Stardew Valley Expanded

版本：1.15.11；目录：`Stardew Valley Expanded/Stardew Valley Expanded Code`。

- **功能**：实现扩展内容所需的程序逻辑。
- **怎么用**：随 SVE 一起安装，自动加载。
- **当前配置**：版本 1.15.11，与其余 SVE 组件配套。
- **联机／注意事项**：所有玩家保持完整 SVE 套件一致，不单独换此 DLL。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3753)。

### 26. SVE 地图与剧情内容 — Stardew Valley Expanded

版本：1.15.11；目录：`Stardew Valley Expanded/[CP] Stardew Valley Expanded`。

- **功能**：扩展人物、地点、剧情、物品与世界内容。
- **怎么用**：正常探索和提高好感逐步解锁，不需要专门启动菜单；当前建议以新档开始。
- **当前配置**：启用 SVE 社区献祭，困难献祭、强化怪物和 MatureEvents 关闭；未安装额外农场替换包。
- **联机／注意事项**：全员安装相同版本及关键配置；正式档中途移除会影响已有内容。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3753)。

### 27. SVE 世界生成组件 — Stardew Valley Expanded Farm Type Manager

版本：1.15.11；目录：`Stardew Valley Expanded/[FTM] Stardew Valley Expanded`。

- **功能**：通过 Farm Type Manager 提供 SVE 配套生成规则。
- **怎么用**：自动运行，无快捷键，和 SVE 其他两个组件一起安装。
- **当前配置**：这是一个组件，不是另一个独立大型扩展。
- **联机／注意事项**：不要复制旧档 data 记录；必需依赖 Farm Type Manager。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3753)。

### 28. 基础补丁框架 — StardewHack

版本：7.4；目录：`StardewHack`。

- **功能**：为相关工具距离、装备等 MOD 提供底层支持。
- **怎么用**：自动加载，无需玩家操作。
- **当前配置**：由依赖它的 MOD 调用。
- **联机／注意事项**：保留配套版本，移除可能导致依赖 MOD 无法工作。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3213)。

### 29. 生日等功能的基础框架 — StardustCore

版本：3.1.1；目录：`StardustCore`。

- **功能**：为 Happy Birthday 等 MOD 提供基础工具和界面组件。
- **怎么用**：后台自动工作，没有必须使用的日常菜单。
- **当前配置**：本地版本包含少量中文显示修订。
- **联机／注意事项**：不要把基础框架当成独立玩法 MOD 删除。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/2341)。

### 30. 界面信息增强 — UI Info Suite 2

版本：2.3.7；目录：`UIInfoSuite2`。

- **功能**：提供日历、委托板、作用范围和多种日常信息提示。
- **怎么用**：O 开日历、H 开委托板；左 Ctrl 显示单个作用范围，左 Ctrl+左 Alt 显示全部范围；在游戏菜单的该 MOD 选项页选择提示。
- **当前配置**：允许显示设置页。各存档的选项可能不同，本包不带房主的旧存档 UI 选项记录。
- **联机／注意事项**：与 Better Ranching、NPC 地图等显示功能可能重叠，可按个人阅读习惯关掉重复提示。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/7098)。

### 31. 更多戒指槽 — Wear More Rings

版本：7.9；目录：`WearMoreRings`。

- **功能**：增加可装备戒指的槽位。
- **怎么用**：打开人物装备栏，把戒指放入新增槽位。
- **当前配置**：当前共 6 个戒指槽，额外饰品槽关闭。
- **联机／注意事项**：减少槽位或卸载前先取下额外槽位中的装备并备份存档。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/3214)。

### 32. 原作风格对话扩展 — Canon-Friendly Dialogue Expansion

版本：3.1.1；目录：`[CP] Canon Friendly Dialogue Expansion`。

- **功能**：增加符合原作人物风格的日常与节日对话。
- **怎么用**：正常与 NPC 聊天，根据好感、日期等条件出现，无快捷键。
- **当前配置**：角色扩展普遍开启；零心选项关闭，额外节日对话开启，节日替换选项关闭。
- **联机／注意事项**：对白由各自游戏显示，团队保持同版本便于共同体验。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/2544)。

### 33. 大地色地图美化 — Earthy Recolour

版本：1.4.4；目录：`[CP] DaisyNiko's Earthy Recolour`。

- **功能**：替换环境色彩和部分贴图。
- **怎么用**：装好自动显示，无快捷键。
- **当前配置**：草地、挖掘点、果树、小地图和城镇建筑选项开启；树木使用 new，冬季耕地为 brown。
- **联机／注意事项**：属于外观内容，不增加功能性地图地点；与其他同类贴图包可能覆盖。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/5255)。

### 34. 生日中文内容包 — Happy Birthday zh-CN Translation Content Pack

版本：2.0.4；目录：`[CP] HappyBirthdayContentPack zh-CN`。

- **功能**：为 Happy Birthday 的相关对白、信件和事件提供中文内容。
- **怎么用**：与 Happy Birthday、Content Patcher 一起加载，游戏选择中文。
- **当前配置**：不是独立生日系统，不需要另设生日或按键。
- **联机／注意事项**：保留主 MOD 和前置；发现英文时先确认内容包加载情况。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/13862)。

### 35. SVE 季节服装与人物美化 — Seasonal Cute Characters SVE

版本：3.0.0；目录：`[CP] Seasonal Cute Characters SVE`。

- **功能**：为 SVE 人物提供替换立绘/行走图及季节、节日服装。
- **怎么用**：正常游戏中按季节或事件显示，无快捷键。
- **当前配置**：FestivalOutfits 和 ExtraOutfits 开启，OlderSophia 关闭。
- **联机／注意事项**：它面向 SVE 人物，不等于原版所有人物都安装了对应服装；冲突贴图以加载结果为准。

[作者下载与说明](https://www.nexusmods.com/stardewvalley/mods/5969)。

## 资料与核对范围

快捷键及当前数值来自本包 config.json，生日选项来自 Configs/ModConfig.json，自动钓鱼机操作还核对了本地 i18n 提示。组件数量与 mod-lock.json 逐项对应。

补充作者资料：[Automate 使用说明](https://github.com/Pathoschild/StardewMods/tree/develop/Automate)、[AutoFisher](https://www.nexusmods.com/stardewvalley/mods/48820)、[UI Info Suite 2](https://github.com/Annosz/UIInfoSuite2)。页面新版描述可能不同于本包旧版，以本包版本实际表现为准。

这是使用说明和配置核对，不是完整多人兼容认证。安装步骤、联机测试流程和分发范围见 [安装指南](README.md)，完整版本表见 [MODS.md](MODS.md)。
