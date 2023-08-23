# EsayGame 项目文档

## 项目概述

EsayGame 是一个基于分布式多场景架构设计简单的游戏后端框架，

## 技术栈

- **游戏架构**：采用`C++20`自主研发的游戏后端框架
- **编程语言**：项目将使用 `luajit` 作为主要的编程语言，与 `C++` 紧密集成。
  
## 模块介绍

- **KxLogin**：使用 .Net7 编写的数据服务模块，主要用于处理玩家的登录和数据持久化等任务。这个模块通常与数据库交互以保存和检索玩家的游戏数据。
- **KxGateway**：使用 Go 语言编写的分布式网关服务模块，主要负责网络转发、封包处理和封挂处理等任务。这个模块有助于处理玩家与游戏服务器之间的通信。
- **CenterServer**：使用 C++ 语言编写的游戏中心服务模块，主要负责场景分发和聊天服务等功能。这个模块可能协调不同的游戏场景并提供玩家之间的通信。
- **SceneServer**：使用 C++ 语言编写的分布式场景服务模块，主要负责核心逻辑处理和战斗处理等任务。这个模块通常包括游戏世界中的核心游戏逻辑和玩家之间的互动。
- **KxLauncher**：使用 .Net7 语言编写的游戏登录器，主要用于账号注册和游戏登录等功能。这个模块使玩家能够创建帐户、登录游戏并开始游戏。

## 架构示意图
-    <img src="./Doc/Res/img1.jpeg" alt="图片描述" style="display: block; margin: auto;"/>

## 快速开始

1. **克隆项目**：使用 Git 克隆 EsayGame 项目到本地：
   
2. **搭建数据库**：需要自主搭建Pg数据库，然后将连接字符串正确填写到配置文件 `EsayGame\KxLogin\AppConfig\serverConfig.json`。

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
-   [场景主对象](./Doc/场景主对象.md)
-   [场景基础对象](./Doc/场景基础对象.md)
-   [场景玩家对象](./Doc/场景玩家对象.md)
-   [场景物品对象](./Doc/场景物品对象.md)
-   [场景技能对象](./Doc/场景技能对象.md)
-   [场景NPC对象](./Doc/场景NPC对象.md)
-   [场景怪物对象](./Doc/场景怪物对象.md)
-   [如何搭建vscode开发环境](./Doc/如何搭建vscode开发环境.md)
-   [如何使用分布式网关、场景](./Doc/如何使用分布式网关、场景.md)
-   [如何添加lua配置文件(数据配置)](./Doc/如何添加lua配置文件(数据配置).md)
-   [如何添加使用道具触发](./Doc/如何添加使用道具触发.md)
-   [如何新增、修改Npc对话](./Doc/如何新增、修改Npc对话.md)
-   [如何添加玩家个人定时器](./Doc/如何添加玩家个人定时器.md)
-   [如何使用对象自定义变量](./Doc/如何使用对象自定义变量.md)
-   [如何添加一个自定义Buff](./Doc/如何添加一个自定义Buff.md)
-   [如何添加管理员、自定义命令](./Doc/如何添加管理员、自定义命令.md)
-   [如何添加装备附魔](./Doc/如何添加装备附魔.md)
-   [如何使用全局自定义变量](./Doc/如何使用全局自定义变量.md)
-   [如何使用玩家HHD自定义变量](./Doc/如何使用玩家HHD自定义变量.md)


## 更新日志
### 下版本预告
- 攻城战、变身技能、自定义特殊词条(吸血、定身等等)
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
- ### 已知BUG
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

欢迎所有对游戏开发感兴趣的人参与到 EsayGame 项目中来。如果您想要做出贡献，请遵循以下步骤：

1. 提交问题：如果您发现了 bug 或者有改进的建议，请先提交一个 issue 来讨论。
2. 创建分支：为了避免直接修改主分支，创建一个新的分支用于您的修改。
3. 提交变更：在您的分支上进行修改后，提交一个 pull request 来将您的修改合并到主分支中。
4. 团队审核：项目的维护者将对提交的变更进行审核，并根据需要提供反馈。
5. 合并变更：一旦变更通过审核，它将被合并到主分支中，并包含在后续的版本发布中。

## 联系我们

如有任何问题或建议，请联系我们：Q群906195109。
