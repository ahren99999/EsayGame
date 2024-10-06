---游戏主对象
---@class Scene
local Scene

--- 获取场景名称
---@return string
function Scene:Name()
end

--- 获取场景精灵数量
---@return number
function Scene:GetSpiritCount()
end

--- 获取场景玩家数量
---@return number
function Scene:GetPlayerCount()
end

--- 获取场景怪物数量
---@return number
function Scene:GetMonsterCount()
end

--- 获取场景到期时间
---@return number
function Scene:GetExpireTime()
end

--- 通过怪物名字获取场景怪物数量
---@param monsterName string
---@return number
function Scene:GetMonsterCountByName(monsterName)
end

--- 获取场景所有精灵Id  
--- @return number[] 精灵Id列表  
function Scene:GetAllSpiritUid() 

end
  
--- 处理异常玩家  
--- @return number 处理的异常玩家数量  
function Scene:HandleExceptionPlayer()  
end  
  
--- 是否销毁  
--- @return boolean 是否已销毁  
function Scene:IsDestroy()  
end