# NPC 类型

## 简介

NPC 是一个场景npc对象继承Spirit对象，具有以下方法：

### 详细介绍

```lua

--- 获取NPC序号
--- @return uint32_t
function Npc:Idx()
end

--- 获取NPC名称
--- @return string
function Npc:Title()
end

--- 获取NPC所在区域
--- @return string
function Npc:District()
end

--- 发起对话框
--- @param player Player
--- @param content string
--- @param select table
function Npc:Say(player, content, select)
end

--- 打开仓库
--- @param player Player
function Npc:OpenStore(player)
end

--- 打开商店
--- @param player Player
function Npc:OpenShop(player)
end

--- 打开合成界面
--- @param player Player
--- @param type number 1人族 2精灵族
function Npc:OpenSynthesis(player, type)
end

--- 打开或者刷新城主面板  
--- @param player Player 玩家对象指针  
--- @param guildName string 行会名称  
--- @param master string 城主名称  
--- @param gold number 城主金币数量  
--- @param param1 number 参数1  
--- @param param2 number 参数2  
function Npc:OpenOrRefreshCastlePanel(player, guildName, master, gold, param1, param2)  
end
```
