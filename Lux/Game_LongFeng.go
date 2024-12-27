package Lux

import (
	"Libs/Json"
	"Libs/Log"
	LuxLongFeng "Lux/Model/LongFeng"
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type SlotMachine_LongFeng struct {
	machine luxMachine[SlotMachine]
	logic   *luaWrapper
}

func (s *SlotMachine_LongFeng) init() {

	// L := LuaExt.InitLua(stdPath)
	// L.DoFile(logicPath)

	L := createNewLua()

	for _, p := range s.machine.preLoadPath {
		fmt.Println("Lua load path=", p)
		L.loadPath(p)
	}

	s.logic = L
}

func (s *SlotMachine_LongFeng) Play(op PlayOption) {
	gearData := createNewLua()
	gearData.loadPath(s.machine.Path_data(op.Gear))
	main := gearData.getValue("LongFeng" + op.Gear)

	luaObj := s.logic.getValue("SceneSlotMachine_LongFeng").(*lua.LTable)

	luaObj.RawSetString("data", main)
	luaObj.RawSetString("bet_line", lua.LNumber(-1))

	ret := s.logic.callFunc(lua.P{
		Fn:      luaObj.RawGetString("SlotOnce"),
		NRet:    1,
		Protect: false,
	}, luaObj)

	Log.Debug.Print("SlotOnce ret=", string(ret.(lua.LString)))

	var res = Json.Parse[LuxLongFeng.Result_Main](string(ret.(lua.LString)))

	Log.Warn.Printf("Json pase=>%+v", res)
}

func (s *SlotMachine_LongFeng) PlayFree(op PlayOption) {
	gearData := createNewLua()
	gearData.loadPath(s.machine.Path_data(op.Gear))
	main := gearData.getValue("LongFeng" + op.Gear)
	free := gearData.getValue("LongFeng" + op.Gear + "_Free")

	luaObj := s.logic.getValue("MiniLongFengFreeSpin").(*lua.LTable)

	luaObj.RawSetString("related_data", main)
	luaObj.RawSetString("data", free)
	luaObj.RawSetString("bet_line", lua.LNumber(-1))
	luaObj.RawSetString("bet_total", lua.LNumber(10))

	ret := s.logic.callFunc(lua.P{
		Fn:      luaObj.RawGetString("SlotOnce"),
		NRet:    1,
		Protect: false,
	}, luaObj)

	Log.Warn.Print("Free SlotOnce ret=", string(ret.(lua.LString)))
}

func (s *SlotMachine_LongFeng) GetGameFlag() string {
	return string(s.machine.name)
}
