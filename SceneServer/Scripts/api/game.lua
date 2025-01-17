---游戏主对象
---@class Game
Game = {}


--- 获取服务器Code
--- @return number
function Game:ServerCode()
end

--- 获取服务器Uid
--- @return number
function Game:ServerUid()
end

--- 是否属于主服务器
--- @return boolean
function Game:IsMainScene()
end

--- 生成怪物
--- @param idx number
--- @param x number
--- @param y number
--- @returns Monster
function Game:CreateMonsterByIdx(idx, x, y)
end

--- 生成怪物
--- @param name string
--- @param sceneName string
--- @param x number
--- @param y number
--- @param z number
--- @returns Monster
function Game:CreateMonsterByName(name, sceneName, x, y, z)
end

--- 创建一个场景
--- @param sceneName string
--- @returns Scene
function Game:CreateScene(sceneName)
end

--- 获取坐标点周围所有对象
--- @param sceneName string
--- @param x number
--- @param y number
--- @param range number
--- @returns vector<ISpirit*>
function Game:GetNearbySpirits(sceneName, x, y, range)
end

--- 发送系统消息给全服玩家
--- @param msgType number
--- @param msg string
function Game:SendMsg(msgType, msg)
end

--- 通过玩家名字获取玩家Id
--- @param name string
--- @returns number
function Game:GetPlayerIdByName(name)
end

--- 通过玩家id获取玩家名字
--- @param id number
--- @returns string
function Game:GetPlayerNameById(id)
end

--- 获取全部在线玩家
--- @returns number
function Game:GetTotalPlayer()
end

--- 获取玩家整型自定义变量(从数据库中获取)
--- @param playerName string
--- @param key string
--- @param callback function
function Game:GetCustomVar(playerName, key, callback)
end

--- 设置玩家整型自定义变量(写入到数据库)
--- @param playerName string
--- @param key string
--- @param val number
function Game:SetNumberVar(playerName, key, val)
end

--- 设置玩家字符串自定义变量(写入到数据库)
--- @param playerName string
--- @param key string
--- @param val string
function Game:SetStringVar(playerName, key, val)
end

--- 设置玩家bool自定义变量(写入到数据库)
--- @param playerName string
--- @param key string
--- @param val boolean
function Game:SetBoolVar(playerName, key, val)
end

--- 通过名字踢出玩家
--- @param nickName string
function Game:KickPlayerByName(nickName)
end

--- 通过id获取玩家对象
--- @param id number
--- @returns Player
function Game:GetPlayerById(id)
end

--- 通过Uid获取玩家对象
--- @param uid unumber
--- @returns Player
function Game:GetPlayerByUid(uid)
end

--- 通过名字获取玩家对象
--- @param nickName string
--- @returns Player
function Game:GetPlayerByName(nickName)
end

--- 获取全局变量
--- @param key string
--- @param def boolean
--- @return boolean
function Game:GetBool(key, def)
end

--- 设置全局变量(多场景不安全)
--- @param key string
--- @param val boolean
--- @param isSave boolean
function Game:SetBool(key, val, isSave)
end

--- 获取全局变量
--- @param key string
--- @param def string
--- @return string
function Game:GetString(key, def)
end

--- 设置全局变量(多场景不安全)
--- @param key string
--- @param val string
--- @param isSave boolean
function Game:SetString(key, val, isSave)
end

--- 获取全局变量
--- @param key string
--- @param def number
--- @return number
function Game:GetNumber(key, def)
end

--- 设置全局变量(多场景不安全)
--- @param key string
--- @param val number
--- @param isSave boolean
function Game:SetNumber(key, val, isSave)
end

--- 移除怪物
---@param monsterUid number
function Game:RemoveMonsterByUid(monsterUid)
end

--- 通过Uid获取怪物对象
---@param uid number
---@return Monster
function Game:GetMonsterByUid(uid)
end

--- 获取所有玩家列表
--- 必须值拷贝，不是线程安全的操作，存在迭代器失效问题
---@return table
function Game:GetPlayerAll()
end

--- 原生Sql查询  
--- @param sql string SQL查询语句  
--- @param callback function 回调函数  
function Game:SqlQuery(sql, callback)  
end  
  
--- 通过uid获取精灵对象  
--- @param uid number 精灵UID  
--- @return Spirit 精灵对象  
function Game:GetSpiritByUid(uid)  
end  
  
--- 通过行会名获取行会信息  
--- @param guildName string 行会名称  
--- @return Guild 行会对象  
function Game:GetGuildByName(guildName)
end  
  
--- Lua 生成怪物  
--- @param monsterName string 怪物名称  
--- @param sceneName string 场景名称  
--- @param x number X坐标  
--- @param y number Y坐标  
--- @param z number Z坐标（默认为0）  
--- @return Monster 怪物对象指针  
function Game:LuaCreateMonsterByName(monsterName, sceneName, x, y, z)  
end  
  
--- 新增游戏日志  
--- @param eventId emLogEvent 事件ID  
--- @param desc string 描述  
--- @param player Player 玩家对象  
--- @param item Item 物品对象  
--- @param monster Monster 怪物对象  
function Game:AddGameLog(eventId, desc, player, item, monster)  
end  
  
--- 获取当前时间  
--- @return string 当前时间字符串  
function Game:GetTime()  
end  
  
--- 获取坐标点周围指定对象  
--- @param sceneName string 场景名称  
--- @param x number X坐标  
--- @param y number Y坐标  
--- @param range number 范围  
--- @param spiritType emSpiritType 精灵类型  
--- @return table<Spirit> 精灵对象列表  
function Game:GetNearbySpiritsByType(sceneName, x, y, range, spiritType)  
end  
  
--- 获得单个怪物战利品  
--- @param playerUid number 玩家UID  
--- @param monsterName string 怪物名称  
--- @return Item[] 物品对象列表  
function Game:GetMonsterLoot(playerUid, monsterName)  
end  
  
--- 投掷一个物品在地图上  
--- @param item Item 物品对象  
--- @param sceneName string 场景名称  
--- @param x number X坐标  
--- @param y number Y坐标  
--- @param z number Z坐标  
--- @param time number 物品在地图上存在的时间  
--- @param pickMask number 拾取掩码  
function Game:ThrowItem(item, sceneName, x, y, z, time, pickMask)  
end  
  
--- 通过Uid移除Npc  
--- @param uid number Npc UID  
function Game:RemoveNpcByUid(uid)  
end  
  
--- 重新加载怪物分布配置  
function Game:ReloadMonsterGen()  
end  
  
--- 获取玩家对象数量  
--- @return number 玩家对象数量  
function Game:GetPlayerObjectCount()  
end  
  
--- 获取活跃玩家对象数量  
--- @return number 活跃玩家对象数量  
function Game:GetPlayerObjectActiveCount()  
end  
  
--- 设置游戏核心线程绑定CPU核心  
--- @param coreMask number CPU核心掩码  
--- @return boolean 设置是否成功  
function Game:SetGameThreadAffinityMask(coreMask)  
end  
  
--- 清理异常玩家  
--- @return number 清理的玩家数量  
function Game:HandleExceptionPlayer()  
end  