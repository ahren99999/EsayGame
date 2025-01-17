# EasyGame 项目文档

## 项目概述

EasyGame 是一个基于分布式多场景架构设计简单的游戏后端框架

## 开源协议

本项目基于 **MIT License** 开源协议发布。使用本项目代码时，您可以自由地使用、修改和分发本项目的源代码，但须遵守以下规则：

* 必须保留原始代码中的版权声明及许可文件；
* 如果您对源代码进行修改，必须明确标明修改部分，并保留相关的版权信息；
* 本项目源代码可用于个人或商业项目，无需将您的修改版代码开源；
* 本项目不附带任何专利授权，您在使用时需自行处理相关的专利问题。

完整的许可协议可查看 [LICENSE](./LICENSE) 文件。

## 免责申明

本项目的代码和相关文件是“按现状”提供的，无任何明示或暗示的担保。在适用法律允许的范围内，作者不对因使用本项目所产生的任何损害或法律责任负责，包括但不限于：

* 任何直接、间接或意外的损失；
* 因代码缺陷、错误或使用不当导致的损坏；
* 因使用本项目代码引发的法律纠纷或专利侵权。

使用本项目代码即表示您同意上述条款，并确认了解使用开源代码可能带来的相关风险。

## 技术栈

- **游戏架构**：采用`C++20`自主研发的游戏后端框架
- **编程语言**：项目将使用 `luajit` 作为主要的编程语言，与 `C++` 紧密集成。

## 模块介绍

- **KxLogin**：使用 .Net8 编写的数据服务模块，主要用于处理玩家的登录和数据持久化等任务。这个模块通常与数据库交互以保存和检索玩家的游戏数据。
- **KxGateway**：使用 Go 语言编写的分布式网关服务模块，主要负责网络转发、封包处理和封挂处理等任务。这个模块有助于处理玩家与游戏服务器之间的通信。
- **CenterServer**：使用 C++ 语言编写的游戏中心服务模块，主要负责场景分发和聊天服务等功能。这个模块可能协调不同的游戏场景并提供玩家之间的通信。
- **SceneServer**：使用 C++ 语言编写的分布式场景服务模块，主要负责核心逻辑处理和战斗处理等任务。这个模块通常包括游戏世界中的核心游戏逻辑和玩家之间的互动。
- **KxLauncher**：使用  electron + vue3 编写的游戏登录器，主要用于账号注册和游戏登录等功能。这个模块使玩家能够创建帐户、登录游戏并开始游戏。

## 架构示意图

- <img src="./Doc/Res/img1.jpeg" alt="图片描述" style="display: block; margin: auto;"/>

## 快速开始

1. **克隆项目**：使用 Git 克隆 EasyGame 项目到本地：
2. **搭建数据库**：需要自主搭建Pg数据库，然后将连接字符串正确填写到配置文件 `EasyGame\KxLogin\AppConfig\serverConfig.json`。
3. **服务启动**：依次按启动 KxLogin.exe、KxCenterServer.Release.exe、KxStartup.Release.exe、KxGateway.exe。
4. **游戏启动**：将KxLauncher下的所有文件复制到客户端Bin目录下，双击KxLauncher.exe,选择服务器线路(朱雀区频道1或者频道2)、注册账号(账号格式必须手机号格式)、登录游戏

## 疑难解答

- **SceneServer启动失败** 要成功启动场景服务器，必须确保 `KxLogin` 正确启动并连接到数据库。如果启动失败，您可以查看位于 "`logs`" 目录中的启动日志。此外，您可以在 QQ 群内找到有关数据库工具的更多信息。
- **KxLogin启动失败** 如果 `KxLogin` 启动失败，通常需要安装.Net7依赖库。您可以在 QQ 群内找到完整的安装程序。
- **服务器内部错误(103)** 这个错误通常表示 `KxLogin` 与数据库的连接存在问题。请确保连接配置正确。
- **服务器内部错误(102)** 这个错误表示 `KxGateway` 与 `KxLogin` 的连接存在问题。检查连接配置以确保正确性。
- **服务器内部错误(101)** 这个错误表示 `KxLauncher` 与 `KxGateway` 的连接存在问题。确保连接配置正确。
- **客户端提示无法连接到服务器...** 如果客户端提示无法连接到服务器，您可以尝试替换 "`hf.dll`" 文件，或者使用 QQ 群内提供的完整客户端。
- **客户端登录提示严重错误...** 如果客户端登录提示出现严重错误，这可能是因为选择的场景尚未启动。尝试切换到朱雀区（`频道1`或`频道2`），这通常可以解决问题。

## 开发文档(编辑中...)

- [场景主对象](./Doc/场景主对象.md)
- [场景基础对象](./Doc/场景基础对象.md)
- [场景玩家对象](./Doc/场景玩家对象.md)
- [场景物品对象](./Doc/场景物品对象.md)
- [场景技能对象](./Doc/场景技能对象.md)
- [场景NPC对象](./Doc/场景NPC对象.md)
- [场景怪物对象](./Doc/场景怪物对象.md)
- [如何搭建vscode开发环境](./Doc/如何搭建vscode开发环境.md)
- [如何使用分布式网关、场景](./Doc/如何使用分布式网关、场景.md)
- [如何添加lua配置文件(数据配置)](./Doc/如何添加lua配置文件(数据配置).md)
- [如何添加使用道具触发](./Doc/如何添加使用道具触发.md)
- [如何新增、修改Npc对话](./Doc/如何新增、修改Npc对话.md)
- [如何添加玩家个人定时器](./Doc/如何添加玩家个人定时器.md)
- [如何使用对象自定义变量](./Doc/如何使用对象自定义变量.md)
- [如何添加一个自定义Buff](./Doc/如何添加一个自定义Buff.md)
- [如何添加管理员、自定义命令](./Doc/如何添加管理员、自定义命令.md)
- [如何添加装备附魔](./Doc/如何添加装备附魔.md)
- [如何使用全局自定义变量](./Doc/如何使用全局自定义变量.md)
- [如何使用玩家HHD自定义变量](./Doc/如何使用玩家HHD自定义变量.md)

## 更新日志

### 下版本预告

* **2.0 LTS(长期支持版本) 亮点功能预告**
* 幽灵战
* 冰封战
* 城主战
* 自定义副本(支持扫荡)
* 自定义怪物(支持MMORPG各种机制)
* 自定义宠物
* 自定义宝石(清零宝石、幻化宝石)
* 自定义转职
* 客户端自动更新
* 主动防御模块
* 被动防御模块
* 多线支持
* 所有模块支持热更新

- ### 1.0.1.9 2023-10-08
- 1.行会模块已完善。
- 2.攻城模块已部分完成(暂不支持分组对抗)
- 3.日志模块已重构完成。
- 4.新增角色操作日志(需要单独安装Seq Net [安装教程](https://blog.csdn.net/weixin_37648525/article/details/124775490)
- 5.修复若干bug(记录的bug已全部修复)
- <img src="./Doc/Res/1.0.1.9_bug.png" alt="图片描述" style="display: block; margin: auto;"/>
- 新增LuaAPI
- `Player:Camp()` 获取阵营
- `Player:SetCamp()` 设置阵营
- `Player:GoHome()` 回家
- `Player:SetPoint()` 设置基础点数
- `Player:PctExpRate()` 获取经验倍率百分比
- `Player:IncPctExpRate()` 增加经验百分比
- `Player:SetPctExpRate()` 设置经验倍率百分比
- `Player:OpenGrowBlind()` 开启致盲
- `Player:CloseGrowBlind()` 关闭致盲
- `Player:GetCurrentMapIdx()` 获取当前地图区域配置索引号
- `Player:SetDistributablePoints()` 设置可分配点数
- `Monster:Idx()` 获取Monster的db索引
- `Monster:GuildName()` 获取Monster的归属行会（仅对图腾类型生效）
- `Monster:SetGuildName()` 设置Monster的归属行会（仅对图腾类型生效）
- `Monster:ChangeGuild()` 改变Monster的归属行会（仅支持图腾）
- `Game:RemoveMonsterByUid(monsterUid)` 移除怪物
- `Game:GetMonsterByUid(uid)` 通过Uid获取怪物对象
- `Game:GetPlayerAll()` 获取所有玩家列表，必须值拷贝，不是线程安全的操作，存在迭代器失效问题
- ### 1.0.1.8 2023-09-14
- 1.Lua层新增穿戴物品脱下物品接口。
- 2.Lua层新增动态创建Npc。
- 3.Lua层新增副本传送点。
- 4.启用多场景下，支持游戏内换线。
- 5.修复进入不能pk的地图，PK状态不正确的bug.
- 6.`/Reload` 增加权限控制，并且更换为`/重读脚本`.
- 7.修复若干bug
- 新增LuaAPI
- `Scene:GetExpireTime()` 获取场景过期时间
- `Scene:GetSpiritCount()` 获取场景精灵数量
- `Scene:GetPlayerCount()` 获取场景玩家数量
- `Scene:GetMonsterCount()` 获取场景怪物数量
- `Game:ReloadLuaScripts()` 重新加载Lua脚本
- `Game:GetSceneCount(sceneName)` 获取场景数量
- `Game:GetSceneByName(sceneName)` 获取场景对象
- `Game:AsyncCreateScene(sceneName, callback)` 异步创建场景
- `Game:CreateItem(itemName, num)` 创建一个道具并返回道具对象
- `Game:CreateNpc(idx, sceneName, x, y, z)` 创建一个Npc并返回Npc对象
- `Game:CreateMonstersByName(monsterName, count, range, sceneName, x, y)` 批量创建怪物
- `player:GiveItemEx(itemName, des)` 增加一个物品(自动判断在哪个背包，并自动合并叠加物品) 返回物品对象
- `player:GoHomeZ()` 获取回城Z坐标
- `player:WearItem(wearSlot, item)` 穿戴装备
- 注意： 本次更新对配置表结构和Lua脚本进行了更改。请在更新前备份您的数据，并建议使用合并更新的方式。
- #### 已知BUG
- 游戏中选择线路列表名称错误。
- ### 1.0.1.7 2023-09-06
- 1.怪物爆率现在支持按区域配置（请注意，不支持区域继承）。
- 2.多个怪物可以使用同一份爆率文件，并且该文件支持爆率组的配置。
- 3.删除角色功能现在已经可以正常使用。
- 4.传送点移动现在支持Z坐标。
- 5.回城点坐标也支持Z坐标。
- 6.变身技能机制已经完善。
- 7.新增了穿戴物品事件。
- 8.修复了滞留技能问题。
- 9.修复了绝对防御对怪物没有效果的Bug
- 注意： 本次更新对配置表结构和Lua脚本进行了更改。请在更新前备份您的数据，并建议使用合并更新的方式。
- #### 已知BUG
- 大地之斩等技能伤害计算错误。
- ### 1.0.1.6 2023-09-03
- 1.超级、觉醒技能机制已全部在Lua层实现(除致盲术)，如果技能机制错误，请及时反应给作者。
- 2.修复滞留技能伤害计算错误问题。
- 新增LuaAPI
- `ChatChannelLeft()` 返回左边频道
- `ChatChannelRight()` 返回右边频道
- `AddBuffInScene(skillName_US, sceneName, x, y, z, duration, isSave)` 新增一个技能Buff
- `GetAllBuffs()` 获取所有buff idx
- `GetBuffStackCount(idx)` 获取buff叠加次数
- `Pos_UEX()` 获取UE坐标x
- `Pos_UEY()` 获取UE坐标y
- `SubHP(val, spirit)` 扣除人物血量
- `ShowDamage(uid, damage, code)` 播放伤害
- `GetPlayerPtr()` 获取C++智能指针
- `CheckChannel(otherPlayer)` 判断频道是否相同
- `IsSameTeam(otherPlayer)` 是否一个队伍
- 注意： 本次更新对配置表结构和Lua脚本进行了更改。请在更新前备份您的数据，并建议使用合并更新的方式。
- #### 已知BUG
- 水之冷却Buff效果延迟
- ### 1.0.1.5 2023-08-26
- 1.战斗结算和技能结算已经移植到Lua层以提高效率和可维护性。
- 2.基础技能和高级技能已在Lua中实现。
- 3.修复了Buff技能属性增加不正确的问题。
- 4.修复了每日任务无法正确重置的问题。
- 5.新增了变身技能、超级技能、觉醒技能的阶段控制（技能逻辑将在下个版本实现）。
- 6.现在使用Xlsx2LuaTable时无需关闭Excel表格。
- 7.更换了hf.dll的加密算法。
- 新增LuaAPI
- `HasSkillBuff(idx)` 判断是否拥有buff
- `RemoveBuffByIdx(idx)` 通过buffIdx移除buff技能
- `SCPoint()` 获取SC点数
- `SetSCPoint(val)` 设置SC点数
- `RCPoint()` 获取RC点数
- `SetRCPoint(val)` 设置RC点数
- `AwakeningStage()` 获取觉醒阶段
- `SetAwakeningStage(val)` 设置觉醒阶段
- `Stun()` 检查是否处于眩晕状态
- `SetStun(val)` 设置眩晕状态
- `Transformation()` 检查是否处于变身状态
- `SetTransformation(val)` 设置变身状态
- 注意： 本次更新对配置表结构和Lua脚本进行了更改。请在更新前备份您的数据，并建议使用合并更新的方式。
- #### 已知BUG
- 大地之斩等技能伤害计算错误。
- ### 1.0.1.4 2023-08-22
- 1.解决了装备无法使用升级宝石的问题。
- 2.新增了任务系统模块。
- 3.增加了Buff技能的基础伤害值，解决了切换Buff技能时报错的问题。
- 4.引入了新的Lua层事件模块，以增强各模块之间的解耦性。
- 5.新增了一个用于重置全局自定义变量的函数。
- 6.将Buff技能移到Lua层以提高性能和维护性。
- 7.修复了由于未定义的Buff触发函数导致的C++崩溃问题。
- 8.解决了使用`jemalloc.dll`时的Debug版本问题（不再需要`ucrtbased.dll`和`vcruntime140d.dll`）。
- 9.修复了各种Bug和优化。
- 注意： 本次更新对配置表结构和Lua脚本进行了重大更改。请在更新前备份您的数据，并建议使用合并更新的方式。
- #### 已知BUG
- 1.重复使用Bug技能属性无法正确增加问题。
- 2.每日任务24:00数据清理失效问题。

### 1.0.1.3 2023-08-19

- 1.解决特殊场景下背包物品重叠Bug
- 2.新增部分装备附魔(除12、12.5都可以正常附魔了)
- 3.重新梳理战斗逻辑处理，现在战斗数值处理更加合理了！
- 4.KxLauncher.exe更换为.Net4+,兼容性更好了。
- 5.Xlsx2LuaTable.exe扩展支持带vb脚本的excel
- 6.修复若干bug
- 注：本次更新修改了很多配置表结构，更新前务必备份。

### 1.0.1.1 2023-08-16

- 1.新增全局变量功能
- 2.新增离线修改玩家个人变量功能
- 3.新增场景全局定时器功能
- 4.新增管理员命令权限控制
- 5.修复若干bug

### 1.0.1 2023-08-10

- 1.发行版上线

## 贡献指南

欢迎所有对游戏开发感兴趣的人参与到 EasyGame 项目中来。如果您想要做出贡献，请遵循以下步骤：

1. 提交问题：如果您发现了 bug 或者有改进的建议，请先提交一个 issue 来讨论。
2. 创建分支：为了避免直接修改主分支，创建一个新的分支用于您的修改。
3. 提交变更：在您的分支上进行修改后，提交一个 pull request 来将您的修改合并到主分支中。
4. 团队审核：项目的维护者将对提交的变更进行审核，并根据需要提供反馈。
5. 合并变更：一旦变更通过审核，它将被合并到主分支中，并包含在后续的版本发布中。

## 联系我们

如有任何问题或建议，请联系作者 ahren99999@gmail.com 或 [Ant Messenger](https://www.antchats.im/) 搜索添加 easygame。
