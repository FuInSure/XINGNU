# XINGNU 中文补充补丁

这是针对本方案固定版本的本地汉化补充，不含完整 MOD 本体，不能替代原作者安装包。请先按主安装指南安装原 MOD；不要把此文件夹放入 Mods。

## 生日汉化需要单独安装

本补丁不包含 **Happy Birthday zh-CN Translation Content Pack 2.0.4**。请从 [作者页面](https://www.nexusmods.com/stardewvalley/mods/13862) 下载，把 `[CP] HappyBirthdayContentPack zh-CN` 文件夹放在 Mods 下，与 HappyBirthday 并列。它需要 Happy Birthday、StardustCore 和 Content Patcher；安装后选择简体中文并检查 SMAPI 加载情况。

## 安装

1. 退出游戏。解压补丁 ZIP 到独立文件夹。
2. 在该文件夹打开 PowerShell，先检查（把路径换成自己的 Mods 目录）：

```powershell
powershell -ExecutionPolicy Bypass -File .\Install-Translations.ps1 -ModsPath "你的游戏目录\Mods" -CheckOnly
```

3. 检查通过后执行相同命令，去掉末尾 `-CheckOnly`，完成后重启游戏。

脚本在改动前检查全部目标文件的 SHA-256，再验证生成结果。只处理已经安装的 MOD；缺少的 MOD 会跳过。已经安装同一补丁会自动跳过。若提示原文件不匹配，整次安装在写入前停止，不要强制覆盖；版本号相同也可能是不同构建或被其他补丁改过。某些旧备份可能已包含之前的本地修订，因此原作者包不一定匹配：这种情况下需针对实际原文件重新制作补丁。

备份生成在 Mods 的上一级 `XINGNU-translation-backup-日期时间-随机值` 中。运行中写入失败会尝试回滚本次文件。手动恢复：退出游戏，把备份中的原文件按相同相对目录复制回 Mods；`restore-list.json` 中 Existed=false 的条目是本次新建文件，恢复时删除对应文件。保留备份直到确认游戏运行正常。

## 覆盖范围

| MOD 与版本 | 补充内容 |
|---|---|
| AutoFisher 1.1.2 | 新增自动钓鱼机名称、状态、提示及配方信中文 |
| Automate 2.6.1 | 本地补充的设置翻译差异 |
| CJB Cheats Menu 1.42.0 | 本地补充的设置翻译差异 |
| LadderLocator 1.5.2 | 翻译文件补充、开关提示和高亮方式名称 |
| Mod Shortcut Reference Hub 1.2.0 | 本地补充的界面翻译差异；不包含个人快捷键配置 |
| AutomaticGates 2.5.5 | 覆盖层标题及操作提示 |
| SkullCavernElevator 1.6.2 | 电梯设置标签及说明 |
| SinZational Speedy Solutions 1.1.0 | 加载优化设置标签及说明 |
| StardustCore 3.1.1 | Voice Mode 显示文字 |
| SVE 1.15.11 | 两处游戏机名称和齐先生对白中的曲名 |

共 10 个 MOD、11 个文件。SVE 原有大部分中文、Happy Birthday 的独立中文内容包及其他 MOD 自带翻译不在此补丁中，仍需从各作者页面安装。具体作者、版本及来源见主仓库 MODS.md。

`patches.json` 保存原文件校验值、复制区间和变更字节，依赖对应原文件重建输出，不是完整 DLL 分发。不得用本补丁代替原作者授权或宣称这些 MOD 由本项目创作。SVE 作者为 FlashShifter 及贡献者；其他作品权利归各自作者，汉化仅为本项目补充。

已做隔离目录的文件重建验证，不代表完整游戏或多人兼容测试。更新 MOD 后不要强装旧补丁。DLL 中的文字修改通常不改变功能；LadderLocator 的高亮名称转换涉及显示逻辑，仍需游戏内验证。
