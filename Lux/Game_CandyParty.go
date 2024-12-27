package Lux

import (
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type SlotMachine_CandyParty struct {
	machine luxMachine[SlotMachine]
	logic   *luaWrapper
}

func (s *SlotMachine_CandyParty) init() {

	L := createNewLua()

	for _, p := range s.machine.preLoadPath {
		fmt.Println("Lua load path=", p)
		L.loadPath(p)
	}

	//fmt.Println("Lua logic =", L.G.Global.String())
	s.logic = L
}

func (s *SlotMachine_CandyParty) GetGameFlag() string {
	return string(s.machine.name)
}

func (s *SlotMachine_CandyParty) Play(op PlayOption) {

	// s.logic.SetGlobal("SceneSlotMachine_CandyParty",
	// 	sceneSlotMachine_CandyParty{})
	raw := createNewLua()
	raw.loadPath(s.machine.Path_data("016000199"))
	// if e := raw.DoFile(s.machine.Path_data("016000199")); e != nil {
	// 	panic(e)
	// }
	free := raw.getValue("CandyParty016000199_FreeSpin")
	fmt.Println("CandyParty Free=", free)

	main := raw.getValue("CandyParty016000199")
	fmt.Println("CandyParty Main=", main)

	//L, _ := s.logic.NewThread()
	//L := s.logic

	// startFn := lua.NewState().NewTable("SceneSlotMachine_CandyParty").(*lua.LTable)
	data := s.logic.getValue("SceneSlotMachine_CandyParty").(*lua.LTable)

	data.RawSetString("data_FreeSpin", free)
	data.RawSetString("data", main)
	//data.RawSetString("data", lua.LString("Hill8787"))
	data.RawSetString("bet_coin", lua.LNumber(5))
	data.RawSetString("level", lua.LNumber(1))
	data.RawSetString("level_key_countdown", lua.LNumber(15))

	ret := s.logic.callFunc(lua.P{
		Fn: data.RawGetString("StartAll"),
		//Fn:      data.RawGetString("Test"),
		NRet:    1,
		Protect: false,
	}, data)

	//ret := L.Get(-1)

	ret.(*lua.LTable).ForEach(func(l1, l2 lua.LValue) {
		fmt.Println("ret table key=", l1, " value=", l2)
	})

}
