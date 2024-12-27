

--math.randomseed(tonumber(tostring(os.time()):reverse():sub(1, 6)))

Machine_TestDice={
    bet_num=5,
    dice={}
}


function Machine_TestDice:Play()
    print("---Lua Dice Play---")
    -- local myTable = {10, 20, 30, 40}

    local tw=0
    local dice_table={}


    for i = 1, #self.dice do
        local d=self.dice[i]
        --print("dice i=",i," num=",d.num," w=",d.weight)
        tw=tw+d.weight

        local o

        if table.getn(dice_table)<1
        then
            o={
                num=d.num,
                s=1,
                e=d.weight,
                count=0
            }
        else
            o={
                num=d.num,
                s=dice_table[i-1].e+1,
                e=dice_table[i-1].e+d.weight,
                count=0
            }
        end

        dice_table[i]=o

    end
    --print("total weight=",tw," arr len=",table.getn(self.dice))

    -- 打印權重表
    -- for i=1,#dice_table do
    --     local d=dice_table[i]
    --     print("dice table num=",d.num," start=",d.s," end=",d.e)
    -- end

    for i=1,self.bet_num,1 do
        local ran=math.random(1,tw)
        -- print("ran=",ran)
        for i,v in ipairs(dice_table) do  
            --print("dice table num=",v.num," start=",v.s," end=",v.e)
            if (v.s<=ran and ran<=v.e) then
                v.count=v.count+1
            end
        end
    end
    
    return ArrMap(dice_table,
    function(v)
        return {
            num=v.num,
            count=v.count
        }
    end)


    -- local myTable = {name = "Alice", age = 30, city = "Wonderland"}
    -- for key, value in pairs(myTable) do
    --     print(key, value)  -- Prints both key and value
    -- end
end

function ArrMap(arr,back)
    local ret={}
    for i = 1, #arr do
       ret[i]= back(arr[i])
    end
    return ret
end