package Lux

import (
	"Libs/Log"
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type SlotMachine_Promotion struct {
	machine luxMachine[SlotMachine]
	logic   *luaWrapper
}

func (s *SlotMachine_Promotion) init() {

	// L := LuaExt.InitLua(stdPath)
	// L.DoFile(logicPath)

	L := createNewLua()

	for _, p := range s.machine.preLoadPath {
		fmt.Println("Lua load path=", p)
		L.loadPath(p)
	}

	s.logic = L
}

func (s *SlotMachine_Promotion) Play(op PlayOption) {

	gearData := createNewLua()
	gearData.loadPath(s.machine.Path_data(op.Gear))

	main := gearData.getValue(fmt.Sprintf(string(Promotion)+"%s", op.Gear))
	//free := gearData.getValue(fmt.Sprintf(string(Promotion)+"%s_Free", gear))

	luaObj := s.logic.getValue("SceneSlotMachine_Promotion").(*lua.LTable)

	luaObj.RawSetString("data", main)
	luaObj.RawSetString("bet_line", lua.LNumber(-1))

	ret := s.logic.callFunc(lua.P{
		Fn:      luaObj.RawGetString("SlotOnce"),
		NRet:    1,
		Protect: false,
	}, luaObj)

	Log.Debug.Print("SlotOnce ret=", string(ret.(lua.LString)))

	// ret.(*lua.LTable).ForEach(func(l1, l2 lua.LValue) {
	// 	fmt.Println("ret table key=", l1, " value=", l2)
	// })

}

func (s *SlotMachine_Promotion) PlayFree(gear string) {
	gearData := createNewLua()
	gearData.loadPath(s.machine.Path_data(gear))

	main := gearData.getValue(fmt.Sprintf(string(Promotion)+"%s", gear))
	free := gearData.getValue(fmt.Sprintf(string(Promotion)+"%s_Free", gear))

	luaObj := s.logic.getValue("SceneSlotMachine_Promotion").(*lua.LTable)

	luaObj.RawSetString("related_data", main)
	luaObj.RawSetString("fs_data", free)
	luaObj.RawSetString("bet_line", lua.LNumber(-1))

	ret := s.logic.callFunc(lua.P{
		Fn:      luaObj.RawGetString("Freespin"),
		NRet:    1,
		Protect: false,
	}, luaObj)

	Log.Warn.Print("FreeSpin ret=", string(ret.(lua.LString)))
}

func (s *SlotMachine_Promotion) GetGameFlag() string {
	return string(s.machine.name)
}
