
---玩家对象
---@class Player:Spirit, PlayerEx
local player

--- 是否新玩家
--- @return boolean
function player:IsNew()
end

--- 无敌
--- @return boolean
function player:God()
end

--- 设置无敌
--- @param status boolean 设置无敌状态
function player:SetGod(status)
end

--- 隐身
--- @return boolean
function player:Hiding()
end

--- 设置隐身
--- @param status boolean 设置隐身状态
function player:SetHiding(status)
end

--- 连接ID
--- @return number
function player:ConnId()
end

--- 坐标Z
--- @return number
function player:PosZ()
end

--- 种族
--- @return string
function player:Race()
end

--- 性别
--- @return unumber_t
function player:Gender()
end

--- 职业
--- @return string
function player:Profession()
end

--- 出生地
--- @return string
function player:BirthPlace()
end

--- 行会名称
--- @return string
function player:GuildName()
end

--- 发型发色
--- @return string
function player:HairColor()
end

--- 当前血量
--- @return number
function player:HP()
end

--- 最大血量
--- @return number
function player:MaxHP()
end

--- 当前魔法
--- @return number
function player:MP()
end

--- 最大魔法
--- @return number
function player:MaxMP()
end

--- 扣除魔法
--- @param val number
function player:SubMP(val)
end

--- 力量点数
--- @return number
function player:STR()
end

--- 敏捷点数
--- @return number
function player:DEX()
end

--- 精神点数
--- @return number
function player:SPI()
end

--- 白魔法
--- @return number
function player:WhiteMagic()
end

--- 红魔法
--- @return number
function player:RedMagic()
end

--- 蓝魔法
--- @return number
function player:BlueMagic()
end

--- 黄魔法
--- @return number
function player:YellowMagic()
end

--- 黑魔法
--- @return number
function player:BlackMagic()
end

--- 计算魔法力
--- @return number
function player:TotalMagic()
end

--- 可分配点数
--- @return number
function player:DistributablePoints()
end

--- 设置可分配点数
--- @param val number 可分配点数
function player:SetDistributablePoints(val)
end

--- 金币
--- @return number
function player:Gold()
end

--- 减少金币
--- @param num number 减少的金币数量
function player:SubGold(num)
end

--- 增加金币
--- @param num number 增加的金币数量
function player:IncGold(num)
end

--- 等级
--- @return number
function player:Level()
end

--- 等级提升
function player:LevelUp()
end

--- 经验倍率
--- @return number
function player:ExpMultiplier()
end

--- 当前经验
--- @return number
function player:CurrentExp()
end

--- 升级最大经验
--- @return number
function player:MaxExp()
end

--- 增加当前经验
--- @param val number 增加的当前经验值
function player:IncExp(val)
end

--- 移动速度
--- @return float_t
function player:MoveSpeed()
end

--- 是否PK
--- @return boolean
function player:IsPK()
end

--- 设置PK
--- @param status boolean 是否PK状态
function player:SetPK(status)
end

--- 是否战斗中
--- @return boolean
function player:IsFight()
end

--- 设置战斗状态
--- @param status boolean 是否战斗状态
function player:SetFight(status)
end

--- 穿戴信息
--- @return number[]
function player:AttireWear()
end

--- 当前的物理技能
--- @return string
function player:CurrentPhysSkill()
end

--- 设置当前物理技能
--- @param name string 当前物理技能名字
function player:SetCurrentPhysSkill(name)
end

--- 当前的物理魔法技能
--- @return string
function player:CurrentPhysMagSkill()
end

--- 设置当前物理魔法技能
--- @param name string 当前物理魔法技能名字
function player:SetCurrentPhysMagSkill(name)
end

--- 当前的魔法技能
--- @return string
function player:CurrentMagicSkill()
end

--- 设置当前魔法技能
--- @param name string 当前魔法技能名字
function player:SetCurrentMagicSkill(name)
end

--- 最后登录时间
--- @return number
function player:LastLoginTime()
end

--- 回城X坐标
--- @return number
function player:GoHomeX()
end

--- 回城Y坐标
--- @return number
function player:GoHomeY()
end

--- 回城Z坐标
--- @return number
function player:GoHomeZ()
end

--- 设置回城坐标
--- @param x number 回城X坐标
--- @param y number 回城Y坐标
----@param y number 回城Z坐标
function player:SetGomePos(x, y, z)
end

--- 当前对话的Npc
--- @return NpcPtr
function player:CurrentNpc()
end


--- 职业的枚举下标
--- @return number_t
function player:ProfessionIndex()
end

--- 声望
--- @return number
function player:Prestige()
end

--- 设置声望
--- @param val number 声望值
function player:SetPrestige(val)
end

--- 状态
--- @return number_t
function player:LuaStatus()
end

--- 设置状态
--- @param val number_t 状态值
function player:LuaSetStatus(val)
end

--- 发送系统消息
--- @param msgType number 消息类型
--- @param msgCode number 配置索引号
function player:SendMsgEx(msgType, msgCode)
end

--- 发送系统消息
--- @param msgType number 消息类型
--- @param msg string 消息内容
function player:SendMsg(msgType, msg)
end

--- 增加一个物品(自动判断背包，并自动合并叠加物品)
--- @param itemName string 物品名称
--- @param num number 数量
--- @param des string 物品来源
function player:GiveItem(itemName, num, des)
end

--- 通过物品名字扣除物品
--- @param itemName string 物品名称
--- @param num number 数量
--- @return boolean 是否扣除成功
function player:TakeItemByName(itemName, num)
end

--- 通过物品名字获取物品数量
--- @param itemName string 物品名称
--- @return number 拥有的道具数量
function player:GetItemNumByName(itemName)
end


--- 增加技能
--- @param name string 技能名字
--- @param level number 技能等级
function player:AddSkill(name, level)
end

--- 增加技能经验
--- @param skiiName_US string 技能英文名称
function player:IncSkillExp(skiiName_US)
end

--- 在世界场景新增一个Buff技能
--- @param skillName_US string 技能英文名称(必须配置了Buff)
--- @param buffUid number 创建Buff的唯一ID
--- @param x number 游戏坐标x
--- @param y number 游戏坐标y
--- @param z number 游戏坐标z
function player:AddSkillBuff(skillName_US, buffUid, x, y, z)
end

--- 在世界场景移除一个Buff技能
--- @param buffUid number Buff技能的唯一ID
function player:RemoveSkillBuff(buffUid)
end

--- 通过穿戴位置获取穿戴的装备 为空就是没有穿戴
--- @param wearSlot number
--- @returns Item
function player:GetEquipmentBySlot(wearSlot)
end

--- 通过Idx获取技能对象
--- @param idx 技能配置索引
--- @returns Skill
function player:GetSkillByIdx(idx)
end

--- 获取 buff 技能通过uid
--- @param buffUid
--- @returns Skill
function player:GetSkillBuffByUid(buffUid)
end

--- 通过技能中文名称获取技能对象
--- @param name
--- @returns Skill
function player:GetSkillByName(name)
end

--- 通过技能英文名称获取技能对象
--- @param name
--- @returns Skill
function player:GetSkillByName_US(name)
end

--- 是否在安全区
--- @returns boolean
function player:IsInSafe()
end

--- 地图移动
--- @param sceneName 场景名称
--- @param x 游戏坐标x
--- @param y 游戏坐标y
function player:MapMove(sceneName, x, y)
end

--- 带有Z坐标的地图移动
--- @param sceneName 场景名称
--- @param x 游戏坐标x
--- @param y 游戏坐标y
--- @param z 游戏坐标z
function player:MapMoveEx(sceneName, x, y, z)
end

--- 收起宠物
--- @param isDie 回收时设置宠物死亡
function player:RecallPet(isDie)
end

--- 是否启用宠物
--- @returns boolean
function player:IsEnablePet()
end

--- 获取宠物属性
--- @param point number
--- @returns number
function player:GetPetPoint(point)
end

--- 设置宠物属性,自动刷新客户端
--- @param point number
--- @param val number
function player:SetPetPoint(point, val)
end

--- 是否是队长
--- @returns boolean
function player:IsCaptain()
end

--- 是否在队伍中
--- @returns boolean
function player:HasTeam()
end

--- 获取队长
--- @returns player
function player:GetCaptain()
end

--- 离开队伍
function player:LeaveTeam()
end

--- 获取组队成员(不包含自己)
--- @returns table
function player:GetTeamNumbers()
end

--- 注册一个定时器
--- @param timerId number
--- @param ms number
--- @param tableName string 表名
--- @param funName string 函数名
--- @param isLoop boolean
function player:RegisterTimer(timerId, ms, tableName, funName, isLoop)
end

--- 取消一个定时器
--- @param timerId number
function player:UnRegisterTimer(timerId)
end

--- 新增一个Buff，会覆盖相同Buff
--- @param buffIdx number
--- @param duration number
--- @param isSave boolean
function player:AddBuffByIdx(buffIdx, duration, isSave)
end

--- 新增一个Buff，会覆盖相同Buff
--- @param skillName_US string
--- @param duration number
--- @param isSave boolean
function player:AddBuffByName_US(skillName_US, duration, isSave)
end

--- 增加当前经验
--- @param val number
function player:IncExp(val)
end

--- 增加属性值
--- @param attr number
--- @param value number
function player:IncAttr(attr, value)
end

--- 减少属性值
--- @param attr number
--- @param value number
function player:SubAttr(attr, value)
end

--- 获取属性值
--- @param attr number
--- @returns number
function player:GetAttr(attr)
end

--- 设置属性值
--- @param attr number
--- @param value number
function player:SetAttr(attr, value)
end

--- 获取基本属性点数
--- @param idx 1：力量 2：敏捷 3：精神 4：魔法点数
--- @returns number
function player:GetBasePonit(idx)
end

--- 刷新基础属性(重新计算属性)
--- @param isLogin boolean
function player:RefreshAttribute(isLogin)
end

--- 判断是否拥有buff
--- @param idx number
--- @return boolean
function player:HasSkillBuff(idx)
end

--- 通过buffIdx移除buff技能
--- @param idx number
function player:RemoveBuffByIdx(idx)
end

--- 获取SC点数
--- @return number
function player:SCPoint()
end

--- 设置SC点数
--- @param val number
function player:SetSCPoint(val)
end

--- 获取RC点数
--- @return number
function player:RCPoint()
end

--- 设置RC点数
--- @param val number
function player:SetRCPoint(val)
end

--- 获取觉醒阶段
--- @return number
function player:AwakeningStage()
end

--- 设置觉醒阶段
--- @param val number
function player:SetAwakeningStage(val)
end

--- 检查是否处于眩晕状态
--- @return boolean
function player:Stun()
end

--- 设置眩晕状态
--- @param val boolean
function player:SetStun(val)
end

--- 检查是否处于变身状态
--- @return boolean
function player:Transformation()
end

--- 设置变身状态
--- @param val boolean
function player:SetTransformation(val)
end

--- 获取左边聊天频道
--- @return string
function player:ChatChannelLeft()
end

--- 获取右边聊天频道
--- @return string
function player:ChatChannelRight()
end

--- 在场景中新增一个技能Buff
--- @param skillName_US string 技能英文名
--- @param sceneName string 场景名称
--- @param x number UE坐标x
--- @param y number UE坐标y
--- @param z number UE坐标z
--- @param duration number 持续时间
--- @param isSave boolean 是否保存
function player:AddBuffInScene(skillName_US, sceneName, x, y, z, duration, isSave)
end

--- 获取所有buff idx（排除无图标的buff）
--- @return table
function player:GetAllBuffs()
end

--- 获取buff叠加次数
--- @param idx number buffIdx
--- @return number_t
function player:GetBuffStackCount(idx)
end

--- 获取UE坐标x
--- @return number
function player:Pos_UEX()
end

--- 获取UE坐标y
--- @return number
function player:Pos_UEY()
end

--- 扣除人物血量
--- @param val number 扣除的血量值
--- @param spirit SpiritPtr
function player:SubHP(val, spirit)
end

--- 播放伤害
--- @param uid number 目标uid
--- @param damage number 伤害值
--- @param code number_t 攻击效果
function player:ShowDamage(uid, damage, code)
end

--- 获取C++智能指针
--- @return table
function player:GetplayerPtr()
end

--- 检查频道是否相同
--- @param otherplayer playerPtr
--- @return boolean
function player:CheckChannel(otherplayer)
end

--- 检查是否在同一队伍
--- @param otherplayer playerPtr
--- @return boolean
function player:IsSameTeam(otherplayer)
end

--- 增加一个物品(自动判断在哪个背包，并自动合并叠加物品) 返回物品对象
--- @param itemName string 物品名称
--- @param des string 物品来源
--- @return Item
function player:GiveItemEx(itemName, des)
end

--- 获取回城Z坐标
--- @return number
function player:GoHomeZ()
end

--- 穿戴装备
--- @param wearSlot emWearSlot 穿戴位置
--- @param item Item 装备对象
function player:WearItem(wearSlot, item)
end

--- 获取阵营
---@return number
function player:Camp()
end

--- 设置阵营
---@param camp number
function player:SetCamp(camp)
end

--- 回家
function player:GoHome()
end

--- 设置基础点数
---@param point emBasePoint
---@param val number
function player:SetPoint(point, val)
end

--- 获取经验倍率百分比
---@return number
function player:PctExpRate()
end

--- 增加经验百分比
---@param val number
function player:IncPctExpRate(val)
end

--- 设置经验倍率百分比
---@param val number
function player:SetPctExpRate(val)
end

--- 开启致盲
---@param r number
---@param g number
---@param b number
---@param a number
function player:OpenGrowBlind(r, g, b, a)
end

--- 关闭致盲
function player:CloseGrowBlind()
end

--- 获取当前地图区域配置索引号
---@return number
function player:GetCurrentMapIdx()
end

--- 设置可分配点数
---@param val number
function player:SetDistributablePoints(val)
end
  
--- 新增防守反击玩家（绿名反击）  
--- @param playerUid number 玩家UID  
function player:AddFightBack(playerUid)  
end  
  
--- 判断是否防守反击玩家（绿名反击）  
--- @param playerUid number 玩家UID  
--- @return boolean 是否防守反击玩家  
function player:IsFightBack(playerUid)  
end  
  
--- 判断是否为行会管理员  
--- @return boolean 是否为行会管理员  
function player:IsGuildAdmin()  
end  
  
--- 获取当前药剂数量  
--- @return number 药剂数量  
function player:CurrentPotion()  
end  
  
--- 同步效果到客户端  
--- @param effectName string 特效名称  
--- @param param1 number 参数1  
--- @param param2 number 参数2  
function player:SyncEffectToClient(effectName, param1, param2)  
end  
  
--- 同步物品到客户端  
--- @param item Item 物品对象  
--- @param isRefresh boolean 是否刷新  
function player:SyncItemToClient(item, isRefresh)  
end  
  
--- 设置变身卡  
--- @param name string 变身卡名称  
function player:SetKamenRide(name)  
end  
  
--- 获取变身卡  
--- @return string 变身卡名称  
function player:KamenRide()  
end  
  
--- 获取对抗阵营  
--- @return string 对抗阵营  
function player:OnlineCamp()  
end  
  
--- 设置对抗阵营  
--- @param icon string 对抗阵营图标  
--- @param name string 对抗阵营名称  
function player:SetOnlineCamp(icon, name)  
end  
  
--- 获取对抗阵营图标  
--- @return string 对抗阵营图标  
function player:CampIcon()  
end  
  
--- 设置锁定等级  
--- @param val boolean 锁定状态  
function player:SetLockLevel(val)  
end  
  
--- 获取锁定等级  
--- @return boolean 锁定状态  
function player:LockLevel()  
end  
  
--- 通过背包索引获取道具列表  
--- @param idx number 背包索引  
--- @return Item[] 道具列表  
function player:GetItemsByInventory(idx)  
end  
  
--- 通过物品UID扣除指定数量的道具  
--- @param uid number 物品UID  
--- @param num number 扣除数量  
--- @return boolean 是否扣除成功  
function player:TakeItemByUid(uid, num)  
end  
  
--- 获取当前称号  
--- @return string 当前称号  
function player:CurrentTitle()  
end  
  
--- 获取所有称号  
--- @return string[] 所有称号列表  
function player:GetAllTitles()  
end  
  
--- 增加一个称号  
--- @param title string 称号名称  
function player:AddTitle(title)  
end  
  
--- 移除一个称号  
--- @param title string 称号名称  
function player:RemoveTitle(title)  
end  
  
--- 设置当前称号  
--- @param title string 称号名称  
function player:SetCurrentTitle(title)  
end  
  
--- 设置击杀数  
--- @param val number 击杀数值  
function player:SetKillNumber(val)  
end  
  
--- 获取击杀数  
--- @return number 击杀数值  
function player:KillNumber()  
end  
  
--- 设置死亡次数  
--- @param val number 死亡次数  
function player:SetDeaths(val)  
end  
  
--- 获取死亡次数  
--- @return number 死亡次数  
function player:Deaths()  
end  
  
--- 设置预留1  
--- @param val number 预留1值  
function player:SetReserved1(val)  
end  
  
--- 获取预留1  
--- @return number 预留1值  
function player:Reserved1()  
end  
  
--- 设置预留2  
--- @param val number 预留2值  
function player:SetReserved2(val)  
end  
  
--- 获取预留2  
--- @return number 预留2值  
function player:Reserved2()  
end  
  
--- 设置预留3  
--- @param val number 预留3值  
function player:SetReserved3(val)  
end  
  
--- 获取预留3  
--- @return number 预留3值  
function player:Reserved3()  
end  
  
--- 通过UID获取物品信息  
--- @param uid number 物品UID  
--- @return Item 物品对象  
function player:GetItemByUid(uid)  
end  
  
--- 获取登录IP  
--- @return string 登录IP  
function player:IP()  
end  
  
--- 设置高级状态  
--- @param val boolean 高级状态  
function player:SetAdvancedStatus(val)  
end  
  
--- 获取高级状态  
--- @return boolean 高级状态  
function player:AdvancedStatus()  
end  
  
--- 通过背包坐标获取物品信息  
--- @param x number 背包X坐标  
--- @param y number 背包Y坐标  
--- @param z number 背包Z坐标  
--- @return Item 物品对象  
function player:GetItemByPos(x, y, z)  
end  
  
--- 获取Ban时间  
--- @return number Ban时间  
function player:Ban()  
end  
  
--- 设置Ban时间  
--- @param val number Ban时间  
function player:SetBan(val)  
end  
  
--- 设置经验值  
--- @param val number 经验值  
function player:SetExp(val)  
end  
  
--- 广播在线阵营  
function player:BroadcastOnlineCamp()  
end  
  
--- 判断是否在视野中  
--- @param spiritUid number 精灵UID  
--- @return boolean 是否在视野中  
function player:IsInView(spiritUid)  
end  
  
--- 无视背包空位新增物品  
--- @param itemName string 物品名称  
--- @param num number 数量  
--- @param des string 描述  
function player:GiveItemIgnoreSize(itemName, num, des)  
end  
  
--- 无视背包空位增加一个物品  
--- @param item Item 物品对象  
function player:AddItemIgnoreSize(item)  
end  
  
--- 通过BuffIdx新增Buff（毫秒）  
--- @param buffIdx number Buff配置idx  
--- @param duration number 持续时间（毫秒）  
--- @param isSave boolean 离线是否保存  
function player:AddBuffByIdxMil(buffIdx, duration, isSave)  
end  
  
--- 获取背包过期时间  
--- @param idx number 背包索引  
--- @return number 过期时间  
function player:GetInventoryExpires(idx)  
end  
  
--- 设置背包过期时间  
--- @param idx number 背包索引  
--- @param val number 过期时间  
function player:SetInventoryExpires(idx, val)  
end  
  
--- 判断背包是否过期  
--- @param idx number 背包索引  
--- @return boolean 是否过期  
function player:CheckInventoryExpires(idx)  
end  
  
--- 创建宠物物品  
--- @param name string 宠物名称  
--- @param look string 宠物外观  
--- @param level number 宠物等级  
--- @param stage number 宠物阶段  
--- @return Item 宠物物品对象  
function player:CreatePetItem(name, look, level, stage)  
end  
  
--- 获取宠物外观  
--- @return string 宠物外观  
function player:GetPetLook()  
end  
  
--- 获取登录账号  
--- @return string 登录账号  
function player:Account()  
end  
  
--- 获取背包所有道具列表  
--- @return Item[] 道具列表  
function player:GetInventoryItems()  
end  
  
--- 无视穿戴扣除物品  
--- @param item Item 物品对象  
--- @return boolean 是否扣除成功  
function player:TakeItemIgnoreWear(item)  
end  
  
--- 设置发型发色  
--- @param val string 发型发色  
--- @param isUpdate boolean 是否更新  
function player:SetHairColor(val, isUpdate)  
end  
  
--- 减少属性点  
--- @param str number 力量点数  
--- @param dex number 敏捷点数  
--- @param spi number 精神点数  
--- @param white number 白魔法  
--- @param red number 红魔法  
--- @param blue number 蓝魔法  
--- @param yellow number 黄魔法  
--- @param black number 黑魔法  
function player:SubPoint(str, dex, spi, white, red, blue, yellow, black)  
end  
  
--- 获取基础属性点  
--- @param idx number 属性索引  
--- @return number 属性点值  
function player:GetPoint(idx)  
end  
  
--- 设置等级  
--- @param val number 等级值  
function player:SetLevel(val)  
end  
  
--- 同步技能信息  
--- @param name string 技能名  
--- @param code number 技能代码  
function player:SyncSkillInfo(name, code)  
end  
  
--- 同步穿戴信息到客户端  
--- @param wearSlot emWearSlot 穿戴位置  
--- @param isBroadcasting boolean 是否广播  
function player:SyncWearItemToClient(wearSlot, isBroadcasting)  
end  
  
--- 获取GBK编码的玩家名称  
--- @return string GBK编码的玩家名称  
function player:Name_GBK()  
end  
  
--- 处理弓箭箭筒数量  
--- @param num number 处理的数量  
function player:HandleDecQuiverCount(num)  
end  
  
--- 组队移动  
--- @param sceneName string 场景名称  
--- @param x number 游戏坐标x  
--- @param y number 游戏坐标y  
--- @param z number 游戏坐标z  
--- @param isCoerce boolean 是否强制  
function player:TeamMapMove(sceneName, x, y, z, isCoerce)  
end  
  
--- 设置禁言时间  
--- @param val number 禁言时间  
function player:SetMuteDuration(val)  
end  
  
--- 获取禁言时间  
--- @return number 禁言时间  
function player:MuteDuration()  
end  
  
--- 判断是否禁言  
--- @return boolean 是否禁言  
function player:IsMuteDuration()  
end  
  
--- 获取机器码  
--- @return string 机器码  
function player:MacCode()  
end  
  
--- 获取队伍成员数量  
--- @return number 队伍成员数量  
function player:GetTeamCount()  
end  