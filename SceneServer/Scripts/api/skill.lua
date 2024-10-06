---Skill对象
---@class Skill:Spirit
local Skill

--- 获取配置索引
--- @return number
function Skill:Idx()
end

--- 获取技能等级
--- @return number
function Skill:Level()
end

--- 设置技能等级
--- @param val number
function Skill:SetLevel(val)
end

--- 获取技能智能指针  
--- @return Skill
function Skill:GetSkillPtr()  
end  
  
--- 是否禁用  
--- @return boolean 是否禁用  
function Skill:IsDisable()  
end  
  
--- 设置禁用状态  
--- @param val boolean 禁用状态  
function Skill:SetDisable(val)  
end  
  
--- 获取SP点  
--- @return number SP点  
function Skill:SP()  
end  
  
--- 设置SP点  
--- @param val number SP点值  
function Skill:SetSP(val)  
end