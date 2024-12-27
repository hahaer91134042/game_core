package Lux

import (
	"Libs/Log"
	LuxExt "Lux/Ext"
	LuaExt "Lux/Lua"
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type TestMachine_Dice struct {
	machine luxMachine[LotteryMachine]
	logic   *lua.LState
}

type gearItem struct {
	Num    int
	Weight int
}

type diceRet struct {
	Num   int
	Count int
}

// type testItem struct {
// 	V1 int
// 	V2 int
// }

func (d *TestMachine_Dice) init() {
	L := lua.NewState(lua.Options{
		IncludeGoStackTrace: true,
		SkipOpenLibs:        false,
	})
	for _, v := range d.machine.preLoadPath {
		if err := L.DoFile(v); err != nil {
			//panic(err)
			Log.Error.Print(err)
		}
	}

	d.logic = L
}

func (d *TestMachine_Dice) Play(op PlayOption) {
	machine := d.logic.GetGlobal("Machine_TestDice").(*lua.LTable)
	fmt.Println("Play 使用檔位:", op.Gear)

	dice := lua.NewState()
	dice.DoFile(d.machine.Path_data(op.Gear))

	luaDiceSet := dice.GetGlobal("TestDice_Set")

	gearSetList := LuaExt.LuaToArry[gearItem](luaDiceSet)

	// luaDiceSet.(*lua.LTable).ForEach(func(i lua.LValue, v lua.LValue) {
	// 	//fmt.Println("set i->", i, " v->", v)
	// 	var g gearItem
	// 	gluamapper.Map(v.(*lua.LTable), &g)
	// 	gearSetList = append(gearSetList, g)
	// })

	//fmt.Println("Lua obj test=", LuaExt.LuaToObj[testItem](dice.GetGlobal("Test")))

	// if e := gluamapper.Map(luaDiceSet.(*lua.LUserData), &gearSetList); e != nil {
	// 	panic(e)
	// }

	for _, v := range gearSetList {
		fmt.Println("GO Dice set num=", v.Num, " weight=", v.Weight)
	}

	machine.RawSetString("bet_num", lua.LNumber(op.BetNum))
	machine.RawSetString("dice", luaDiceSet)

	d.logic.CallByParam(lua.P{
		Fn:      machine.RawGetString("Play"),
		NRet:    1,
		Protect: false,
	}, machine)
	ret := LuaExt.LuaToArry[diceRet](d.logic.Get(-1))
	// ret.(*lua.LTable).ForEach(func(l1, l2 lua.LValue) {
	// 	fmt.Println("ret k=", l1, " v=", l2)
	// })

	for _, r := range ret {
		fmt.Println("num:", r.Num, "[", LuxExt.Round((float64(r.Count)/float64(op.BetNum))*100, 2), "%] ", r.Count, " times")
	}
	//fmt.Println("獲得 骰子點數:", ret)
	defer d.logic.Pop(1)
}

func (d *TestMachine_Dice) GetGameFlag() string {
	return string(d.machine.name)
}
