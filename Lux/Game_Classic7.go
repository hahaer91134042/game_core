package Lux

import (
	"Libs/Log"
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type SlotMachine_Classic7 struct {
	machine luxMachine[SlotMachine]
	logic   *luaWrapper
}

func (s *SlotMachine_Classic7) init() {

	// L := LuaExt.InitLua(stdPath)
	// L.DoFile(logicPath)

	L := createNewLua()

	for _, p := range s.machine.preLoadPath {
		fmt.Println("Lua load path=", p)
		L.loadPath(p)
	}

	s.logic = L
}

func (s *SlotMachine_Classic7) Play(op PlayOption) {
	gearData := createNewLua()
	gearData.loadPath(s.machine.Path_data(op.Gear))
	
	main := gearData.getValue("Classic7_" + op.Gear)

	luaObj := s.logic.getValue("SceneSlotMachine_HUGA_1").(*lua.LTable)

	luaObj.RawSetString("data", main)
	luaObj.RawSetString("bet_line", lua.LNumber(-1))

	ret := s.logic.callFunc(lua.P{
		Fn:      luaObj.RawGetString("SlotOnce"),
		NRet:    1,
		Protect: false,
	}, luaObj)

	Log.Debug.Print("SlotOnce ret=", string(ret.(lua.LString)))
}

func (s *SlotMachine_Classic7) PlayJp(op PlayOption) {

}

func (s *SlotMachine_Classic7) GetGameFlag() string {
	return string(s.machine.name)
}
