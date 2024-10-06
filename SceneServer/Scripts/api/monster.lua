---怪物对象
---@class Monster:Spirit
local Monster

--- 获取当前HP
--- @return number
function Monster:HP()
end

--- 扣除血量并返回实际扣除的血量
--- @param val number
--- @return number
function Monster:SubHP(val)
end

--- 获取警卫范围
--- @return number
function Monster:GuardRange()
end

--- 检查是否死亡时触发
--- @return boolean
function Monster:IsIsDeathTrigger()
end

--- 设置是否死亡时触发
--- @param val boolean
function Monster:SetIsIsDeathTrigger(val)
end

--- 获取Monster的db索引
---@return number
function Monster:Idx()
end

--- 获取Monster的归属行会（仅对图腾类型生效）
---@return string
function Monster:OnlineCamp()
end

--- 设置Monster的归属行会（仅对图腾类型生效）
---@param guildName string
function Monster:SetOnlineCamp(guildName)
end

--- 改变Monster的归属行会（仅支持图腾）
---@param guildName string
function Monster:ChangeOnlineCamp(guildName)
end

--- 设置怪物位置（浮点数）  
--- @param x number X坐标  
--- @param y number Y坐标  
function Monster:SetPosf(x, y)  
end  
  
--- 获取对抗阵营图标  
--- @return string 对抗阵营图标  
function Monster:CampIcon()  
end  
  
--- 获取基础属性数值  
--- @param attr emBaseAttr 属性枚举  
--- @return number 属性数值  
function Monster:GetAttr(attr)  
end  
  
--- 设置基础属性值  
--- @param attr emBaseAttr 属性枚举  
--- @param value number 属性值  
function Monster:SetAttr(attr, value)  
end  
  
--- 减少属性值  
--- @param attr emBaseAttr 属性枚举  
--- @param value number 减少的值  
function Monster:SubAttr(attr, value)  
end  
  
--- 增加属性值  
--- @param attr emBaseAttr 属性枚举  
--- @param value number 增加的值  
function Monster:IncAttr(attr, value)  
end  
  
--- 怪物刷新属性  
function Monster:RefreshAttribute()  
end  
  
--- 新增Buff（毫秒）  
--- @param buffIdx number Buff配置idx  
--- @param duration number 持续时间（毫秒）  
function Monster:AddBuffByIdxMil(buffIdx, duration)  
end  
  
--- 新增Buff  
--- @param skillName_US string 技能英文名称  
--- @param duration number 持续时间  
function Monster:AddBuffByName_US(skillName_US, duration)  
end  
  
--- 在世界场景新增一个Buff技能  
--- @param skillName_US string 技能英文名称(必须配置了Buff)  
--- @param sceneName string 场景名称  
--- @param x number 游戏坐标x  
--- @param y number 游戏坐标y  
--- @param z number 游戏坐标z  
--- @param duration number 持续时间  
function Monster:AddBuffInScene(skillName_US, sceneName, x, y, z, duration)  
end  
  
--- 通过BuffIdx移除Buff技能  
--- @param idx number BuffIdx  
function Monster:RemoveBuffByIdx(idx)  
end  
  
--- 获取Buff位置信息  
--- @param buffUid number Buff的UID  
--- @return string, number, number, number Buff的位置信息  
function Monster:GetBuffPos(buffUid)
end
  
--- 添加技能Buff  
--- @param name string 技能英文名称(必须配置了Buff)  
--- @param buffUid number 创建buf的uid  
--- @param x number 游戏坐标x  
--- @param y number 游戏坐标y  
--- @param z number 游戏坐标z  
function Monster:AddSkillBuff(name, buffUid, x, y, z)  
end  
  
--- 移除技能Buff  
--- @param buffUid number Buff的UID  
function Monster:RemoveSkillBuff(buffUid)  
end  
  
--- 通过uid获取Buff技能  
--- @param buffUid number Buff的UID  
--- @return Skill Buff技能对象  
function Monster:GetSkillBuffByUid(buffUid)  
end  
  
--- 获取UE坐标X  
--- @return number UE坐标X  
function Monster:Pos_UEX()  
end  
  
--- 获取UE坐标Y  
--- @return number UE坐标Y  
function Monster:Pos_UEY()  
end  
  
--- 设置UE坐标  
--- @param x number UE坐标X  
--- @param y number UE坐标Y  
function Monster:SetPos_UE(x, y)  
end  
  
--- 技能攻击  
--- @param skillName string 技能名称  
--- @param playerUid number 玩家UID  
--- @param ueX number UE坐标X  
--- @param ueY number UE坐标Y  
function Monster:SkillAttack(skillName, playerUid, ueX, ueY)  
end  
  
--- 通过技能名称获取技能  
--- @param name string 技能名称  
--- @return Skill 技能对象  
function Monster:GetSkillByName(name)  
end  
  