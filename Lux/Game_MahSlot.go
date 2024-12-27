package Lux

import (
	"Libs/File"
	"Libs/Json"
	LuaExt "Lux/Lua"
	LuxMahSlot "Lux/Model/MahSlot"
	"fmt"
)

type SlotMachine_MahSlot struct {
	machine luxMachine[SlotMachine]
	gearLua *luaWrapper
}

func (s *SlotMachine_MahSlot) init() {
	var dirPath = fmt.Sprintf("../game_luas/%s/lua_data", s.machine.name)
	//Log.Debug.Print("MahSlot dirpath->", dirPath)
	files := File.FromDir(dirPath)

	s.gearLua = createNewLua()
	//Log.Debug.Print("MahSlot gearLua->", s.gearLua)

	for _, f := range files {
		//Log.Warn.Print("gear file name->", f.FileName)
		//Log.Warn.Print("gear file path->", dirPath+"/"+f.FullName)
		s.gearLua.loadPath(dirPath + "/" + f.FullName)
	}

}

func (s *SlotMachine_MahSlot) Play(op PlayOption) {
	//Log.Warn.Print("MahSlot Play gearLua->", s.gearLua)
	//bs, _ := os.ReadFile(s.machine.Path_data(op.Gear))

	// src, _ := Encoder.GBK.Decode(bs)

	//Log.Debug.Print("lua str->", string(src))

	//raw := LuaExt.InitLuaSource(string(bs))

	//flag:=fmt.Sprintf(string(s.machine.name)+"%s",gear)

	var dataJP = LuaExt.LuaToObj[LuxMahSlot.Data_JP](op.Gear, s.gearLua.state)
	var data = LuaExt.LuaToObj[LuxMahSlot.Data_Main](op.Gear, s.gearLua.state)

	fmt.Println("SlotMah data->", Json.String(data))
	fmt.Println("SlotMah JP data->", Json.String(dataJP))
}

func (s *SlotMachine_MahSlot) GetGameFlag() string {
	return string(s.machine.name)
}
