--
package.path = package.path .. ';.\\res\\Promotion\\lua\\?.lua' .. ';.\\res\\Promotion\\?.lua'



function CopyTable(tbl)
	local inst = {}
	for k,v in pairs(tbl) do
		local vty = type(v)
		if(vty == "table") then
			inst[k] = CopyTable(v)
		else
			inst[k] = v
		end
	end
	return inst;
end

function RemoveItem(list, item, removeAll)
    local rmCount = 0
    for i = 1, #list do
        if list[i - rmCount] == item then
            table.remove(list, i - rmCount)
            if removeAll then
                rmCount = rmCount + 1
            else
                break
            end
        end
    end
end

function RandomSeed(seed)
	math.randomseed(seed)
end

-- ��װ�������api

-- ��������ڶ��߳���ʹ��
--[[
���ǵ����̵߳İ�ȫ�ԣ����ô��������������������ӡ���ȡ�����ֵ����ʽ
1. ����������� local x = lxBlitzppRand()
2. ����������� x:Seed(tostring(os.time()):reverse():sub(1, 6))
3. ��ȡ���ֵ x:RandEx(1,100)

lxBlitzppRand.Seed(seed) �����������
lxBlitzppRand.Rand() ��ȡ���ֵ [0,1)
lxBlitzppRand.RandEx(start,end_) ��ȡ���ֵ [start, end_) ���� start,end_Ϊ����
]]

-- ���false�����luaĬ��random���������
local _USE_BLITZ = false

local blitzpp = nil
if(_USE_BLITZ) then
	blitzpp = lxBlitzppRand()

	-- Ĭ���������
	blitzpp:Seed(tostring(os.time()):reverse():sub(1, 6))
else
	math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))
end

-- �������
function GameSeed(seed)
	if(_USE_BLITZ) then
		blitzpp:Seed(seed)
	else
		math.randomseed(seed)
	end
end

-- ȡֵ��Χ�� ������ [0,1)
function GameRand()
	if(_USE_BLITZ) then
		return blitzpp:Rand()
	else
		return math.random()
	end
end

-- start: ����;
-- end__: ������ 
-- ȡֵ��Χ������ [start, end_)
function GameRandEx(start,end_)
	if(_USE_BLITZ) then
		return blitzpp:RandEx(start,end_)
	else
		if start >= end_ - 1 then
			return start
		else
			return math.random(start,end_-1)
		end
			
	end
end

-- ���߳�������� tid���߳�id
function RandSeed(tid)
	blitzpp:Seed(tostring(os.time()+tid):reverse():sub(1, 6)) 
end


------------------------------------- λ���㺯�� ---------------------------------------
--[[
@brief	λ������,�൱��a|b
]]--
function BitOR(a,b)
	local p,c = 1,0
	while a+b>0 do
		local ra,rb = a%2,b%2
		if ra + rb > 0 then 
			c = c + p 
		end
		a,b,p=(a-ra)/2,(b-rb)/2,p*2
	end
	
	return c
end

--[[
@brief	λ������,�൱��!n
]]--
function BitNOT(n)
	local p,c = 1,0
	while n>0 do
		local r=n%2
		if r<1 then c = c+p end
		n,p = (n-r)/2, p*2
	end
	return c
end

--[[
@brief	λ������,�൱��a&b
]]--
function BitAND(a, b)
	local p,c=1,0
	while a>0 and b>0 do
		local ra,rb = a%2,b%2
		if ra>0 and rb>0 then c = c + p end
		a,b,p=(a-ra)/2, (b-rb)/2, p*2
	end
	return c
end

function RandList(rh)
	local ret = {}

	local size = #rh
	for i=1,size do
		local idx = GameRandEx(1, size + 1)
		while(ret[idx] ~= nil) do
			idx = math.fmod(idx + 1, size)
		end
		ret[idx] = rh[i]
	end
	
	return ret
end



------------------------------------- �����㷨 ---------------------------------------


local function _SortFindIndexRange(list, greater, left, right, val)
	if left > right then
		return right + 1
	end
	
	local i = math.floor((left + right) / 2)
	
	if greater(list[i], val) then
		return _SortFindIndexRange(list, greater, left, i - 1, val)
	else
		return _SortFindIndexRange(list, greater, i + 1, right, val)
	end
end

local function _SortFindIndex(list, greater, val)	
	return _SortFindIndexRange(list, greater, 1, #list, val)
end

--[[
@brief ���򣬶�ÿ��������˳����������У����з���
@param	list: ��Ҫ��������Ķ���
		greater: ��С�ж�����
]]--
function LX_SORT(list, greater)
	local ret = {}
	
	for i=1,#list do
		local index = _SortFindIndex(ret, greater, list[i])
		
		for j=#ret,index,-1 do
			ret[j+1]=ret[j]
		end
		ret[index]=list[i]
	end
	
	return ret
end

print("---std load finish---")

