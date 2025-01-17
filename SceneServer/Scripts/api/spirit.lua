

---@class Spirit 场景基类对象
local spirit

--- 获取分布式唯一ID
--- @return number 分布式唯一ID
function spirit:Id()
end

--- 获取名字
--- @return string 名字
function spirit:Name()
end

--- 获取场景名字
--- @return string 场景名字
function spirit:SceneName()
end

--- 获取X坐标
--- @return number X坐标
function spirit:PosX()
end

--- 获取Y坐标
--- @return number Y坐标
function spirit:PosY()
end

--- 获取方向
--- @return number 方向
function spirit:Dir()
end

--- 获取场景Uid 重启场景服务器将发生改变
--- @return number 场景Uid
function spirit:Uid()
end

--- 可视距离
--- @return number 可视距离
function spirit:VD()
end

--- 是否是玩家对象
--- @return boolean 返回是否是玩家对象
function spirit:IsPlayer()
end

--- 是否是怪物对象
--- @return boolean 返回是否是怪物对象
function spirit:IsMonster()
end

--- 是否是技能对象
--- @return boolean 返回是否是技能对象
function spirit:IsSkill()
end

--- 是否是道具
--- @return boolean 返回是否是道具
function spirit:IsItem()
end

--- 类型转换为玩家对象
--- @return Player 返回玩家对象
function spirit:ToPlayer()
end

--- 类型转换为怪物对象
--- @return Monster 返回怪物对象
function spirit:ToMonster()
end

--- 类型转换为技能对象
--- @return Skill 返回技能对象
function spirit:ToSkill()
end

--- 类型转换为道具对象
--- @return Item 返回道具对象
function spirit:ToItem()
end

--- 获取自定义bool类型变量值
--- @param key string 变量名
--- @param def boolean 默认值
--- @return boolean 存在则返回缓存值，否则返回默认值
function spirit:GetBool(key, def)
end

--- 设置自定义bool类型变量值
--- @param key string 变量名
--- @param val boolean 值
--- @param isSave boolean 是否持久化(异步存入数据库)
function spirit:SetBool(key, val, isSave)
end

--- 获取自定义string类型变量值
--- @param key string 变量名
--- @param def string 默认值
--- @return string 存在则返回缓存值，否则返回默认值
function spirit:GetString(key, def)
end

--- 设置自定义string类型变量值
--- @param key string 变量名
--- @param val string 值
--- @param isSave boolean 是否持久化(异步存入数据库)
function spirit:SetString(key, val, isSave)
end

--- 获取自定义number类型变量值
--- @param key string 变量名
--- @param def number 默认值
--- @return number 存在则返回缓存值，否则返回默认值
function spirit:GetNumber(key, def)
end

--- 设置自定义number类型变量值
--- @param key string 变量名
--- @param val number 值
--- @param isSave boolean 是否持久化(异步存入数据库)
function spirit:SetNumber(key, val, isSave)
end

--- 获取this智能指针
---  @return Spirit
function spirit:GetSpiritPtr()
end


