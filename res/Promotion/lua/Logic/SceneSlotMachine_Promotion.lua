--[[
	老虎机游戏逻辑脚本，与老虎机数据脚本配合使用
]]--
local debug = require("Debug")
local json = require('json')

SceneSlotMachine_Promotion = 
{
	stay = {},
	backup_stay = {},--沒用到
	prize_wild_mask = {},
	data = {},
	bet_line = 0,
	bet_coin = 0,
	bet_total = 0,
	
	SlotOnce = nil;
	Freespin = nil;
	ClearCentreStay = nil;
	GetPrize = nil;
}

local function _CheckRollExistsObj(self, roll, obj_id)
	local ret = false
	if roll~= nil then
		for i=1,#roll do
			local obj = self.data.objs[roll[i]]			
			if  obj.id == obj_id or CommonFun._ObjWild(self, obj, obj_id) then
				ret = true
				break
			end
		end
	end
	return ret
end

local function _CheckObjFullLine(self, result, obj_id)
	local con_time = 0
	local with_wild = false
	local wild_count = 0
	local wild_obj = nil
	local lines_count = 1
	local extra_rate = 0
	
	local prize_info = {}
	prize_info.type = "FullLine"
	prize_info.obj_id = 0
	prize_info.group_id = 0
	prize_info.continue = 0
	prize_info.prize = {}
	prize_info.with_wild = false
	prize_info.wild_count = 0	
	prize_info.extra_rate = 0
	prize_info.lines_count = 0
	
	local has_obj_self = false
	local con_notstay_flag = false


	for i=1,#result do		
		local count_pl = 0
		for idx=1,#result[i] do
			local obj = self.data.objs[result[i][idx]]		
			local bingo = false			
			if CommonFun._ObjWild(self, obj, obj_id) then
				with_wild = true
				wild_count = wild_count + 1
				count_pl = count_pl + 1
				bingo = true
			elseif obj.id == obj_id then
				has_obj_self = true
				count_pl = count_pl + 1
				bingo = true
			end

			if bingo and obj.extra_rate ~= nil then
				extra_rate = extra_rate + obj.extra_rate
			end
			
			if bingo and self.data.stay[i][idx] == nil then
				con_notstay_flag = true
			end
		end
		
		if count_pl > 0 then
			con_time = con_time + 1
			lines_count = lines_count * count_pl
			CommonFun._WriteObjFullLinePrize(self, prize_info, obj_id, con_time, with_wild, wild_count, extra_rate, lines_count)
		else
			break
		end
	end	
	
	if not has_obj_self or con_time < 2 or not con_notstay_flag then
		return false, nil
	else
		if prize_info.obj_id == 0 and prize_info.group_id == 0 then
			return false, nil
		end

		return true, prize_info
	end
end

local function _CheckGroupFullLine(self, result, group_id)
	local con_time = 0;
	local with_wild = false
	local wild_count = 0
	local wild_obj = nil
	local lines_count = 1
	local extra_rate = 0

	local prize_info = {}
	prize_info.type = "FullLine"
	prize_info.obj_id = 0
	prize_info.group_id = 0
	prize_info.continue = 0
	prize_info.prize = {}
	prize_info.with_wild = false
	prize_info.wild_count = 0	
	prize_info.extra_rate = 0
	prize_info.lines_count = 0
	
	local roll_pl = {}
	for x=1,#result do
		roll_pl[x] = {}
		roll_pl[x].check = {}
		for y=1,#result[x] do
			roll_pl[x].check[y] = false
		end
	end
	
	local group = self.data.groups[group_id]
	for gi=1,#group.group do
		local obj_id = group.group[gi]
		
		for x=1,#result do
			for y=1,#result[x] do
				local obj = self.data.objs[result[x][y]]
								
				if CommonFun._ObjWild(self, obj, obj_id) or obj.id == obj_id then
					roll_pl[x].check[y] = true
				end
			end			
		end
	end

	local has_obj_self = false
	
	if self.bet_color == 1 then
		for x=#result,1,-1 do
			local count_pl = 0
			for y=1,#result[x] do
				local obj = self.data.objs[result[x][y]]		
				local bingo = roll_pl[x].check[y]
				
				if bingo then
					if obj.wild == nil or #obj.wild == 0 then
						has_obj_self = true
					else
						with_wild = true
						wild_count = wild_count + 1	
					end
					count_pl = count_pl + 1
					if obj.extra_rate ~= nil then
						extra_rate = extra_rate + obj.extra_rate
					end
				end
			end	
			
			if count_pl > 0 then
				con_time = con_time + 1
				lines_count = lines_count * count_pl
				CommonFun._WriteGroupFullLinePrize(self, prize_info, group_id, con_time, with_wild, wild_count, extra_rate, lines_count)
			else
				break
			end
		end		
	else
		for x=1,#result do
			local count_pl = 0
			for y=1,#result[x] do
				local obj = self.data.objs[result[x][y]]		
				local bingo = roll_pl[x].check[y]
				
				if bingo then
					if obj.wild == nil or #obj.wild == 0 then
						has_obj_self = true
					else
						with_wild = true
						wild_count = wild_count + 1	
					end
					count_pl = count_pl + 1
					if obj.extra_rate ~= nil then
						extra_rate = extra_rate + obj.extra_rate
					end
				end
			end	
			
			if count_pl > 0 then
				con_time = con_time + 1
				lines_count = lines_count * count_pl
				CommonFun._WriteGroupFullLinePrize(self, prize_info, group_id, con_time, with_wild, wild_count, extra_rate, lines_count)
			else
				break
			end
		end		
	end
	
	if not has_obj_self or con_time < 2 then
		return false, nil
	else
		if prize_info.obj_id == 0 and prize_info.group_id == 0 then
			return false, nil
		end

		return true, prize_info
	end

end

local function _GetPrizeFullLine(self, result, prize_line, cur_prize_index)
	local obj_prize = {}
		
	for index=1,#self.data.objs do
		local obj_id = self.data.objs[index].id
		local checked, prize_info = _CheckObjFullLine(self, result, obj_id, 1)
		if checked and #prize_info.prize > 0 then
			obj_prize[obj_id] = prize_info	
		end
	end
	
	for index=1,#self.data.groups do
		local group_id = self.data.groups[index].id

		local checked, prize_info = _CheckGroupFullLine(self, result, group_id)
		if checked and #prize_info.prize > 0 then
			for ii=1,#self.data.groups[index].group do
				if obj_prize[self.data.groups[index].group[ii]] ~= nil and prize_info.continue <= obj_prize[self.data.groups[index].group[ii]].continue then
					checked = false
					break
				end
			end
		end
		
		if checked and #prize_info.prize > 0 then
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
			for ii=1,#self.data.groups[index].group do
				obj_prize[self.data.groups[index].group[ii]] = nil
			end
		end
	end
	
	for i=1,#self.data.objs do
		if obj_prize[i] ~= nil then
			prize_line[cur_prize_index] = obj_prize[i]
			cur_prize_index = cur_prize_index + 1
		end
	end
	
	return prize_line, cur_prize_index
end

local function _CheckGroupScatterCount(self, result, group_id)
	local group_obj = self.data.groups[group_id]
	if group_obj.scatter_cnt == nil or #group_obj.scatter_cnt==0 then
		return nil
	end
	
	local group_obj_id = 0
	local rlt_cnt={}
	local scatter_count = 0
	for i=1,#result do
		for j=1,#result[i] do
		    for k=1,#group_obj.group do
			  local obj_id = group_obj.group[k]
			  if result[i][j] == obj_id then
			      local obj = self.data.objs[obj_id]
				  scatter_count = scatter_count + 1
				  rlt_cnt[scatter_count] ={}
				  rlt_cnt[scatter_count].index =  CommonFun._GetListIndex(self,i,j)
				  rlt_cnt[scatter_count].prize = 0
				  
				  if group_obj_id == 0 then 
				     group_obj_id = obj_id
				  end
				  
			  end
			end
		end
	end
	
	local flag = false
	local cnt_prize = nil 
	for i=1,#group_obj.scatter_cnt do
	   local cnt = group_obj.scatter_cnt[i]
	   if i == scatter_count and #cnt > 0then
	       flag = true
		   cnt_prize = cnt
	       break
	   end
	end
	if not flag then
	   return nil
	end
	
	local prize_info = {}
	prize_info.type = "GroupScatterCount"
	prize_info.obj_id = group_obj_id
	prize_info.group_id = group_id
	prize_info.continue = scatter_count
	prize_info.with_wild = false
	prize_info.prize = cnt_prize
	prize_info.group_scatter_cnt = rlt_cnt
	prize_info.extra_rate = 0
	
	
	return prize_info
	
end

local function _GetPrizeTotal(self, result)
	local prize_line = {}
	local cur_prize_index = 1

	if self.data.win_line == nil then
		prize_line, cur_prize_index = _GetPrizeFullLine(self, result, prize_line, cur_prize_index)
	else
		prize_line, cur_prize_index = CommonFun._GetPrizeWinLine(self, result, prize_line, cur_prize_index)
	end
	
	for x=1,#self.data.objs do
		local prize_info = CommonFun._CheckScatter(self, result, self.data.objs[x].id)
		if prize_info ~=nil then			
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
		end
	end
	
	for x=1,#self.data.objs do
		local prize_info = CommonFun._CheckCount(self, result, self.data.objs[x].id)
		if prize_info ~=nil then			
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
		end
	end
	
	if self.data.is_fa then
		local prize_info = CommonFun._CheckFull(self, result)
		if prize_info ~= nil then
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
		end
	end
	
	--check group scatter cnt
	local chk_mask={}
	for x=1,#self.data.groups do
	    local prize_info = _CheckGroupScatterCount(self, result, self.data.groups[x].id)
		if prize_info ~=nil then			
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
		end
	end
	for x=1,#self.data.objs do
		local prize_info = CommonFun._CheckObjScatterCount(self, result, self.data.objs[x].id)
		if prize_info ~= nil then
			prize_line[cur_prize_index] = prize_info
			cur_prize_index = cur_prize_index + 1
		end
	end
		
	return prize_line
end

local function _StayInit(self)
	self.data.stay = {}
	for i=1,self.data.rolls.roll_count do
		self.data.stay[i] = {}
		for j=1,self.data.rolls.line_count do
			self.data.stay[i][j] = nil
		end
	end
end

local function _StayClone(des_stay,src_stay)
	for i=1,#src_stay do
		des_stay[i]={}
		for j=1,3 do
			des_stay[i][j] = src_stay[i][j]
		end
	end
end

local function _OnStay(self,result)
	local is_stay = false
	for i=1,self.data.rolls.roll_count do
		for j=1,self.data.rolls.line_count do
			local obj = self.data.objs[result[i][j]]
			if #obj.wild > 0 and self.data.stay[i][j] == nil then
				self.data.stay[i][j] = result[i][j]
				is_stay = true
			end
		end
		
	end
	
	return is_stay
end

local function _GetInvaildOrder(self,roll_range)
	local orders = {}
	local num = 0

	for i=1,self.data.rolls.roll_count do
		local count = roll_range[i]
		for j=count+1,self.data.rolls.line_count do
			local index = (i-1)*self.data.rolls.line_count + j
			num = num + 1 
			orders[num] = index 
		end
	end
	
	return orders
end

local function _CheckInvaildOrder(order_id,invaild_orders)
	local ret = false
	for i=1,#invaild_orders do 
		if order_id == invaild_orders[i] then
			ret = true
			break
		end
	end
	return ret
end

local function _RollAllRolls(self,roll_range)
	local ret = { }
	local fa_mutex = {}
	for i=1,self.data.rolls.roll_count do
		ret[i] = {}
	end
	for i=1,#self.data.objs do
		fa_mutex[self.data.objs[i].id] = false
	end
	
	local invaild_orders = _GetInvaildOrder(self,roll_range)
    
	for i=1,#self.data.uc.order do
		if not _CheckInvaildOrder(self.data.uc.order[i],invaild_orders) then
			if self.data.test_result ~= nil then
				local x, y = CommonFun._GetCoorIndex(self, self.data.uc.order[i])
				ret[x][y] = self.data.test_result[x][y]
			else
				CommonFun._RollOneRoll(self, self.data.uc.order[i], ret, fa_mutex)
				--debug.log(string.format("order_id:%d",self.data.uc.order[i]))  
			end
		end
	end

	return ret
end

local function _GetRollRange(ranges,off_set)
	local range = {}
	local num = 0
	for i=off_set+1,off_set+5 do
		num = num + 1
		range[num] = ranges[i]
	end
	
	return range
end

local function _OnStay100(self,result,prize_line)
	local is_stay = false
	for i=1,#prize_line do
		local prize_info = prize_line[i]
		if prize_info.type =="FullLine" then
			local obj_id = prize_info.obj_id
			local continue = prize_info.continue
			for x=1,continue do
				for y=1,#result[x] do
					local obj = self.data.objs[result[x][y]]
					if obj_id==result[x][y] or CommonFun._ObjWild(self, obj, obj_id) then
						self.data.stay[x][y] = result[x][y]
						is_stay = true
					end
				end
			end
		end
		
	end
	return is_stay
end

local function _Upgrade(self)
	for i=1,self.data.rolls.roll_count do
		for j=1,self.data.rolls.line_count do
			self.data.stay[i][j] = nil
		end
		if i < self.data.rolls.roll_count then
			for j=1,self.data.rolls.line_count do
				self.data.stay[i][j] = self.data.stay[i+1][j]
			end
		end
	end
end

local function _UpgradeWildMask(self)
	for i=1,self.data.rolls.roll_count do
		for j=1,self.data.rolls.line_count do
			if self.data.stay[i][j] ~= nil and self.prize_wild_mask[i][j]==false then
				local obj = self.data.objs[self.data.stay[i][j]]
				if CommonFun._ObjWild(self, obj, 0) then
					self.prize_wild_mask[i][j] = true
				end
			end
		end
	end
	for i=1,self.data.rolls.roll_count do
		for j=1,self.data.rolls.line_count do
			self.prize_wild_mask[i][j] = false
		end
		if i < self.data.rolls.roll_count then
			for j=1,self.data.rolls.line_count do
				self.prize_wild_mask[i][j] = self.prize_wild_mask[i+1][j]
			end
		end
	end
end

local function _GetPrizeWildNum(self)
	local num = 0
	for i=1,self.data.rolls.roll_count do 
		for j=1,self.data.rolls.line_count do
			if self.data.stay[i][j] ~= nil then
				local obj = self.data.objs[self.data.stay[i][j]]
				if CommonFun._ObjWild(self, obj, 0) then  --and self.prize_wild_mask[i][j] == false
					num = num + 1
				end
			end
		end
	end
	return num
end

local function _TrySpecialAward(self,roll_range)
	local sa_index = 0
	for i=1,#self.data.sa.items do
		local rt = GameRandEx(0, self.data.sa.total)
		if rt < self.data.sa.items[i].rate then
			sa_index = i
			break
		end
	end

	if sa_index > 0 and #self.data.sa.items[sa_index].objs > 0 then
		local ret = { }
		for i=1,self.data.rolls.roll_count do
			ret[i] = {}
		end
		local fa_mutex = {}
		for i=1,#self.data.objs do
			fa_mutex[self.data.objs[i].id] = false
		end
		
		local invaild_orders = _GetInvaildOrder(self,roll_range)
		
		local sa_obj = CommonFun._RollSA(self, self.data.sa.items[sa_index].objs)	
		for i=1,#self.data.uc.order do
			if not _CheckInvaildOrder(self.data.uc.order[i],invaild_orders) then
				local x, y = CommonFun._GetCoorIndex(self, self.data.uc.order[i])
				local rr = GameRandEx(0, 100)
				local sy = self.data.stay[x][y]
				if rr < self.data.sa.items[sa_index].arr_rate[x][y] and self.data.stay[x][y] == nil then
					ret[x][y] = CommonFun._GetSAObjID(self, sa_obj)
					if self.data.objs[ret[x][y]].mutex ~= nil then
						for i=1,#self.data.objs[ret[x][y]].mutex do
							fa_mutex[self.data.objs[ret[x][y]].mutex[i]] = true
						end
					end
				else
					CommonFun._RollOneRoll(self, self.data.uc.order[i], ret, fa_mutex)
				end	
			end
		end
		
		return ret	
	else
		return nil
	end
end

local function _ProcResult(self)
	local rets = {}
	local result = {}
	local num = 0
	local prize_wild_num = 0
	local roll_ranges = {3,3,3,4,4,4,5,5,5,5,5}
	local off_set = 0
    local range = _GetRollRange(roll_ranges,off_set)
	num = num + 1
	result = _TrySpecialAward(self,range)
	if result == nil then
		result = _RollAllRolls(self,range)
	end
	rets[num] = {}
	rets[num].result = result --_RollAllRolls(self,range)
	local prize_line = _GetPrizeTotal(self, result)
	rets[num].prize_line = prize_line --CommonFun._GetPrizeTotal(self, result)
	rets[num].prize_wild_num = 0
	
	for i=1,self.data.rolls.roll_count do
		self.prize_wild_mask[i] = {}
		for j=1,self.data.rolls.line_count do
			self.prize_wild_mask[i][j] = false
		end
	end
	
	--6
	while(_OnStay100(self,rets[num].result,rets[num].prize_line)) do
		rets[num].prize_wild_num = _GetPrizeWildNum(self)
		if off_set >= 6 then
			break
		end
		--_UpgradeWildMask(self)
		_Upgrade(self)
		off_set = off_set + 1
		range = _GetRollRange(roll_ranges,off_set)
		num = num + 1
		rets[num] = {}
		rets[num].result = _TrySpecialAward(self,range)
		if rets[num].result == nil then
			rets[num].result = _RollAllRolls(self,range)
		end
		rets[num].prize_line = _GetPrizeTotal(self, rets[num].result)
		rets[num].prize_wild_num = 0
	end
	
	--debug.log(string.format("prize_wild_num:%d",prize_wild_num))
	return rets
end

local function _CalcMainTotalPrize(self, rets)
	local total_prize = 0
	for i=1,#rets do
		local ret = rets[i]
		total_prize = total_prize + CommonFun._CalcTotalPrize(self, ret.prize_line)
	end
	
	return total_prize
end

function SceneSlotMachine_Promotion:SlotOnce()
	local ret = {}
	local rets = {}
	local test_result={{2,6,3},{7,1,8},{1,4,6},{5,1,5},{7,7,2}}
	
	if self.bet_line < 0 then
		if self.data.win_line ~= nil then
			self.bet_line = #self.data.win_line
		elseif self.data.rolls ~= nil and self.data.rolls.lines ~= nil then
			self.bet_line = 1
			for i=1,#self.data.rolls.lines do
				self.bet_line = self.bet_line * self.data.rolls.lines[i]
			end
		else
			self.bet_line = self.data.line_coef
		end
	end

    if self.data.version.data_type == "HUGA" then 
		_StayInit(self)	
		rets = _ProcResult(self)
		
		local prize = _CalcMainTotalPrize(self, rets)
		
		local kick_count = 0
		while(CommonFun._TryKickOut(self, prize)) do
			_StayInit(self)
			rets = _ProcResult(self)
			prize = _CalcMainTotalPrize(self, rets)
			
			kick_count = kick_count + 1
			--超过10次将放弃
			if kick_count >= 10 then
			   break
			end
		end 
		
	end

	-- print("Lua SlotOnce ret=",json.encode(rets))
	
	return json.encode(rets)
end

function SceneSlotMachine_Promotion:ClearCentreStay()
	for i=2,self.data.rolls.roll_count-1 do
		for j=1,self.data.rolls.line_count do
			self.data.stay[i][j] = nil
		end
		
	end
end

function SceneSlotMachine_Promotion:Freespin()
	local ret = {}
	local free_data = {}
	free_data.version = self.related_data.version
	free_data.is_fa = self.related_data.is_fa
	free_data.objs = self.related_data.objs
	free_data.groups = self.related_data.groups
	free_data.win_line = self.related_data.win_line
	if self.related_data.version.data_type == "HUGA" then
		free_data.rolls = self.fs_data.rolls
	else
		free_data.rolls = self.related_data.rolls
	end
	free_data.kick_out = self.related_data.kick_out
	free_data.uc = self.fs_data.uc
	free_data.sa = {}
	free_data.sa.items = {}
	
	self.data = free_data
	_StayInit(self)
    if self.data.version.data_type == "HUGA" then 
		local range = {5,5,5,5,5}
		ret.result = _RollAllRolls(self,range)
		ret.prize_line = _GetPrizeTotal(self, ret.result)
		local prize = CommonFun._CalcTotalPrize(self, ret.prize_line)
		
		local kick_count = 0
		while(false and CommonFun._TryKickOut(self, prize)) do
			ret.result = _RollAllRolls(self,range)
			ret.prize_line = _GetPrizeTotal(self, ret.result)
			prize = CommonFun._CalcTotalPrize(self, ret.prize_line)
			
			kick_count = kick_count + 1
			--超过10次将放弃
			if kick_count >= 10 then
			   break
			end
		end 
		
	end

	-- print("Lua FreeSpin ret=",json.encode(ret))

	return json.encode(ret)
end

function SceneSlotMachine_Promotion:GetPrize(result)
	local ret = {}
	ret.prize_line = _GetPrizeTotal(self, result)
	return ret
end

print("---Promotion Logic finish---")