---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Ahren.
--- DateTime: 2023/08/26 13:43
--- buff技能触发

local m = {}

local luaConfig = LuaConfig

---重新加载脚本事件
function m.Init()
    luaConfig = LuaConfig
    
 end
 GameManager.ScriptLoadedEvent:addAction(m.Init)

---获取基础buff技能随机值、持续时长
---@param idx any
local function GetRandomNum(idx, level)
    local min = luaConfig.skillConfig[idx].attribute1[1]
    local max = luaConfig.skillConfig[idx].attribute2[1]
    local num = math.floor(min + (max - min) * level / 100)
    local duration = luaConfig.skillConfig[idx].buff_duration[1]
    return num, duration
end

---命中热情
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWarm(player, hitPlayer, skill, skillName_US)
    ---热情只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())

    local varName = string.format("BUFF技能_%s", skillName_US)

    player:SetNumber("BUFF技能_热情", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中热情光环
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitFireWarm(player, hitPlayer, skill, skillName_US)
    ---热情光环只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_热情光环", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中心灵之火
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWarmOther(player, hitPlayer, skill, skillName_US)
    ---只能给其他玩家使用
    if player:Id() == hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_心灵之火", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中自然抵抗
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitResistNature(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_自然抵抗", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中疾风烈火
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWindOfFire(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_疾风烈火", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中冰神(todo)
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitUndine(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_冰神", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中风神
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitSylph(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_风神", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中火神
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitSpiritSalamander(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_火神", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中大地神
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitGnome(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_大地神", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中树神
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitDryad(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_树神", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中蛇女
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitNaiad(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_蛇女", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中蓝色妖姬
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitNereid(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_蓝色妖姬", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中幽灵公主
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitOread(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_幽灵公主", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中圣之召唤
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitAlseide(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_圣之召唤", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中冰冻
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitColdEnemy(player, hitPlayer, skill, skillName_US)
    ---只能给别人使用
    if player:Id() == hitPlayer:Id() then
        return
    end
    -- ---自己没开PK无法使用
    -- if player:IsPK() then
    --     return
    -- end
    -- ---目标在安全区无法使用
    -- if not hitPlayer:IsInSafe()then
    --     return
    -- end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_冰冻", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中冰风
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWindOfIce(player, hitPlayer, skill, skillName_US)
    ---只能给别人使用
    if player:Id() == hitPlayer:Id() then
        return
    end
    -- ---自己没开PK无法使用
    -- if player:IsPK() then
    --     return
    -- end
    -- ---目标在安全区无法使用
    -- if not hitPlayer:IsInSafe()then
    --     return
    -- end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_冰风", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中强化冰冻
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitFrostEnemy(player, hitPlayer, skill, skillName_US)
    ---只能给别人使用
    if player:Id() == hitPlayer:Id() then
        return
    end
    -- ---自己没开PK无法使用
    -- if player:IsPK() then
    --     return
    -- end
    -- ---目标在安全区无法使用
    -- if not hitPlayer:IsInSafe()then
    --     return
    -- end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_强化冰冻", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中强化冰风
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWaveOfIce(player, hitPlayer, skill, skillName_US)
    ---只能给别人使用
    if player:Id() == hitPlayer:Id() then
        return
    end
    -- ---自己没开PK无法使用
    -- if player:IsPK() then
    --     return
    -- end
    -- ---目标在安全区无法使用
    -- if not hitPlayer:IsInSafe()then
    --     return
    -- end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    hitPlayer:SetNumber("BUFF技能_强化冰风", num, false)
    hitPlayer:AddBuffByName_US(skillName_US, duration, false);
end

---命中火焰抵抗
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitResistFire(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local num, duration = GetRandomNum(skill:Idx(), skill:Level())
    player:SetNumber("BUFF技能_火焰抵抗", num, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中魔法屏障
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitManaBarrier(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    ---伤害减免
    local num1 = skillDB.attribute1[skill:Level()]
    ---MP抵抗
    local num2 = skillDB.attribute2[skill:Level()]
    ---持续时间
    local duration = skillDB.buff_duration[skill:Level()]

    player:SetNumber("BUFF技能_魔法屏障_伤害减免", num1, false)
    player:SetNumber("BUFF技能_魔法屏障_MP抵抗", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false);
end

---命中变身技能
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitTransformation(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    player:AddBuffByName_US(skillName_US, 120, false);
end

---命中封魔
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitManaRebirth(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end

    local skillDB = luaConfig.skillConfig[skill:Idx()]
    ---攻击力减少百分比
    local num1 = skillDB.attribute1[skill:Level()]
    ---持续时间
    local duration = skillDB.buff_duration[skill:Level()]
    player:SetNumber("BUFF技能_封魔_攻击力减少", num1, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用大地之斩
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitBlastBlade(player, hitPlayer, skill, skillName_US)
    player:AddBuffInScene(skillName_US, player:SceneName(), player:PosX(), player:PosY(), player:PosZ(), 10, false)
end

---使用天神下凡
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitBlastFist(player, hitPlayer, skill, skillName_US)
    player:AddBuffInScene(skillName_US, player:SceneName(), player:PosX(), player:PosY(), player:PosZ(), 10, false)
end

---使用彗星箭
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitRainbowArrow(player, hitPlayer, skill, skillName_US)
    player:AddBuffInScene(skillName_US, player:SceneName(), player:PosX(), player:PosY(), player:PosZ(), 10, false)
end

---使用冰封术
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitWinterRestriction(player, hitPlayer, skill, skillName_US)
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    player:AddBuffInScene(skillName_US, player:SceneName(), player:PosX(), player:PosY(), player:PosZ(), duration, false)
end

---使用冻汽反射
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitColdReflection(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用乾坤大挪移
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitAcrobatic(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    player:SetNumber("BUFF技能_乾坤大挪移", num, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用不净根除
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitEradication(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end

    --移除自身debuff
    local buffs = player:GetAllBuffs()
    for i = 1, #buffs, 1 do
        local buffId = buffs[i]
        local buffDB = luaConfig.buffConfig[buffId]
        if buffDB.is_debuff then
            player:RemoveBuffByIdx(buffId)
        end
    end

    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    player:SetNumber("BUFF技能_不净根除", num, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用狂暴
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitDemolition(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    local num2 = skillDB.attribute2[skill:Level()]
    player:SetNumber("BUFF技能_狂暴_攻击力", num, false)
    player:SetNumber("BUFF技能_狂暴_攻击速度", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用神速
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitGodSpeed(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    local num2 = skillDB.attribute2[skill:Level()]
    local num3 = skillDB.attribute3[skill:Level()]
    player:SetNumber("BUFF技能_神速_移动速度", num, false)
    player:SetNumber("BUFF技能_神速_回避率", num2, false)
    player:SetNumber("BUFF技能_神速_必杀率", num3, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用狂暴光环
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitAuraOfFury(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    local num2 = skillDB.attribute2[skill:Level()]
    player:SetNumber("BUFF技能_狂暴光环_回避率", num, false)
    player:SetNumber("BUFF技能_狂暴光环_必杀率", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用触不可及
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitUntouchable(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    player:SetNumber("BUFF技能_触不可及", num, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用暴动强化
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitRiot(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    player:SetNumber("BUFF技能_暴动强化", num, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用蓄魔
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitManaSaver(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    local num = skillDB.attribute1[skill:Level()]
    player:SetNumber("BUFF技能_蓄魔", num, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用沉默光环
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitSilenceAura(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[skill:Level()]
    player:AddBuffInScene(skillName_US, player:SceneName(), player:PosX(), player:PosY(), player:PosZ(), duration, false)
end

---使用超级强化
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitUltraEndure(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local level = skill:Level()
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[level]
    local num1 = skillDB.attribute1[level]
    local num2 = skillDB.attribute2[level]
    player:SetNumber("BUFF技能_超级强化_增加血量", num1, false)
    player:SetNumber("BUFF技能_超级强化_增加防御", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用绝对防御
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitAbsoluteDefense(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local level = skill:Level()
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[level]
    local num1 = skillDB.attribute1[level]
    local num2 = skillDB.attribute2[level]
    player:SetNumber("BUFF技能_绝对防御_减少移速", num1, false)
    player:SetNumber("BUFF技能_绝对防御_减少攻击", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用盾牌反射
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skill Skill 技能对象
---@param skillName_US string 技能英文名字
local function HitShieldReflection(player, hitPlayer, skill, skillName_US)
    ---只能给自己使用
    if player:Id() ~= hitPlayer:Id() then
        return
    end
    ---持续时间
    local level = skill:Level()
    local skillDB = luaConfig.skillConfig[skill:Idx()]
    local duration = skillDB.buff_duration[level]
    local num1 = skillDB.attribute1[level]
    local num2 = skillDB.attribute2[level]
    player:SetNumber("BUFF技能_盾牌反射_减少物理防御", num1, false)
    player:SetNumber("BUFF技能_盾牌反射_减少魔法防御", num2, false)
    player:AddBuffByName_US(skillName_US, duration, false)
end

---使用字典存储函数指针
local mapHitBuffEvent = {
    ["Warm"] = HitWarm,
    ["FireWarm"] = HitFireWarm,
    ["WarmOther"] = HitWarmOther,
    ["ResistNature"] = HitResistNature,
    ["WindOfFire"] = HitWindOfFire,
    ["Sylph"] = HitSylph,
    ["SpiritSalamander"] = HitSpiritSalamander,
    ["Gnome"] = HitGnome,
    ["Dryad"] = HitDryad,
    ["Naiad"] = HitNaiad,
    ["Nereid"] = HitNereid,
    ["Oread"] = HitOread,
    ["Alseide"] = HitAlseide,
    ["ColdEnemy"] = HitColdEnemy,
    ["WindOfIce"] = HitWindOfIce,
    ["FrostEnemy"] = HitFrostEnemy,
    ["WaveOfIce"] = HitWaveOfIce,
    ["ResistFire"] = HitResistFire,
    ["ManaBarrier"] = HitManaBarrier,
    ["Transformation"] = HitTransformation,
    ["ManaRebirth"] = HitManaRebirth,
    ["BlastBlade"] = HitBlastBlade,
    ["BlastFist"] = HitBlastFist,
    ["RainbowArrow"] = HitRainbowArrow,
    ["WinterRestriction"] = HitWinterRestriction,
    ["ColdReflection"] = HitColdReflection,
    ["Acrobatic"] = HitAcrobatic,
    ["Eradication"] = HitEradication,
    ["Demolition"] = HitDemolition,
    ["GodSpeed"] = HitGodSpeed,
    ["AuraOfFury"] = HitAuraOfFury,
    ["Untouchable"] = HitUntouchable,
    ["Riot"] = HitRiot,
    ["ManaSaver"] = HitManaSaver,
    ["SilenceAura"] = HitSilenceAura,
    ["UltraEndure"] = HitUltraEndure,
    ["AbsoluteDefense"] = HitAbsoluteDefense,
    ["ShieldReflection"] = HitShieldReflection,
    
}

---当玩家命中buff
---@param player Player 释放Buff的玩家
---@param hitPlayer Player 命中Buff的玩家
---@param skillName_US string 技能名称
function m.HandleSkillBuff(player, hitPlayer, skillName_US)
    local skill = player:GetSkillByName_US(skillName_US)

    ---使用了未实现的buff技能
    if mapHitBuffEvent[skillName_US] == nil then
        return
    end
    ---使用策略模式分发函数
    mapHitBuffEvent[skillName_US](player, hitPlayer, skill, skillName_US)
end




SkillBuff = m
return m