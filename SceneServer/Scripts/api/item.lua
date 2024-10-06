
---物品对象
---@class Item:Spirit
local item


--- 设置物品名字
--- @param name string 物品名字
function item:SetName(name)
end

--- 序列号
--- @return number 序列号
function item:Idx()
end

--- 颜色
--- @return number 颜色
function item:Color()
end

--- 设置颜色
--- @param color number 颜色
function item:SetColor(color)
end

--- 数量
--- @return number 数量
function item:Num()
end

--- 设置数量
--- @param num number 数量
function item:SetNum(num)
end

--- 价格
--- @return number 价格
function item:Prices()
end

--- 维修价格
--- @return number 维修价格
function item:RepairCost()
end

--- 归属的玩家名字
--- @return string 归属的玩家名字
function item:OwnerName()
end

--- 归属的玩家Id
--- @return number 归属的玩家Id
function item:OwnerId()
end


--- 是否限时道具
--- @return boolean 是否限时道具
function item:IsLimited()
end

--- 是否可以交易
--- @return boolean 是否可以交易
function item:IsTradable()
end

--- 是否绑定
--- @return boolean 是否绑定
function item:IsBind()
end

--- 品质
--- @return number 品质
function item:Quality()
end

--- 设置品质
--- @param quality number 品质
function item:SetQuality(quality)
end

--- 当前耐久
--- @return number 当前耐久
function item:CurDura()
end

--- 最大耐久
--- @return number 最大耐久
function item:DuraMax()
end

--- 是否存在仓库中
--- @return boolean 是否存在仓库中
function item:IsInStore()
end

--- 获取自定义属性名字列表
--- @return string[] 自定义属性名字列表
function item:GetVecAttrName()
end

--- 获取自定义属性等级列表
--- @return number[] 自定义属性等级列表
function item:GetVecAttrLevel()
end

--- 所在的背包类型(主0、红1、黄2、蓝3)
--- @return number 所在的背包类型
function item:InventoryType()
end

--- 所在的背包Id
--- @return number 所在的背包Id
function item:InventoryId()
end

--- 道具是否宠物
--- @return boolean 是否宠物
function item:IsPet()
end

--- 道具是否隐藏在背包
--- @return boolean 是否隐藏在背包
function item:IsHide()
end

--- 掉落在地上受保护的时间
--- @return number 掉落在地上受保护的时间
function item:ProtectedTime()
end

--- 设置掉落在地上受保护的时间
--- @param val number 掉落在地上受保护的时间
function item:SetProtectedTime(val)
end

--- 聊天频道
--- @return string 聊天频道
function item:ChatChannel()
end

--- 设置聊天频道
--- @param val string 聊天频道
function item:SetChatChannel(val)
end

--- 获取物品附加属性数量
--- @return number 物品附加属性数量
function item:GetAttrCustomCount()
end

--- 新增一个属性
--- @param name string 属性名字
--- @param level number 属性等级
function item:AddAttrCustom(name, level)
end

--- 移除一个属性
--- @param select number 选择要移除的属性索引
function item:RemoveAttrCustom(select)
end

--- 升级一个属性
--- @param select number 选择要升级的属性索引
--- @param level number 指定等级 默认为1
function item:UpgradeAttrCustom(select, level)
end

--- 获取宠物名字
--- @return string 宠物名字
function item:Pet_Name()
end

--- 获取宠物描述
--- @return string 宠物描述
function item:Pet_Desc()
end

--- 获取宠物外观
--- @return string 宠物外观
function item:Pet_Look()
end

--- 设置宠物外观
--- @param val string 宠物外观
function item:Pet_SetLook(val)
end

--- 获取宠物属性
--- @param point number 宠物属性点索引
--- @return number 宠物属性值
function item:Pet_GetPoint(point)
end

--- 设置宠物属性，没有刷新客户端(由外部刷新)
--- @param point number 宠物属性点索引
--- @param val number 宠物属性值
function item:Pet_SetPoint(point, val)
end

--- 获取过期时间  
--- @return number 过期时间  
function item:Expire()  
end  
  
--- 设置过期时间  
--- @param s number 过期时间  
function item:SetLimited(s)  
end  
  
--- 设置绑定状态  
--- @param val boolean 绑定状态  
function item:SetBind(val)  
end  
  
--- 获取道具最高属性等级  
--- @return number 最高属性等级  
function item:GetMaxAttrLevel()  
end  
  
--- 获取道具最低属性等级  
--- @return number 最低属性等级  
function item:GetMinAttrLevel()  
end  
  
--- 获取道具对象的智能指针  
--- @return Item[] 道具对象的智能指针  
function item:GetItemPtr()  
end  
  
--- 获取穿戴需求  
--- @param type number 穿戴需求类型  
--- @return number 穿戴需求值  
function item:GetWearRequirement(type)  
end  
  
--- 设置穿戴需求  
--- @param type number 穿戴需求类型  
--- @param val number 穿戴需求值  
function item:SetWearRequirement(type, val)  
end  
  
--- 设置当前耐久  
--- @param val number 当前耐久值  
function item:SetCurDura(val)  
end  
  
--- 设置最大耐久  
--- @param val number 最大耐久值  
function item:SetDuraMax(val)  
end  
  
--- 获取外观  
--- @return string 外观  
function item:Looks()  
end  
  
--- 设置外观  
--- @param val string 外观值  
function item:SetLooks(val)  
end  
  
--- 获取形状  
--- @return string 形状  
function item:Shape()  
end  
  
--- 设置形状  
--- @param val string 形状值  
function item:SetShape(val)  
end  
