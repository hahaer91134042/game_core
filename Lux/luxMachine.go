package Lux

import "fmt"

type luxMachine[M SlotMachine | LotteryMachine] struct {
	name        M
	preLoadPath []string
	lua_data    string
}

var machine = struct {
	CandyParty luxMachine[SlotMachine]
	MahSlot    luxMachine[SlotMachine]
	Promotion  luxMachine[SlotMachine]
	Classic7   luxMachine[SlotMachine]
	LongFeng   luxMachine[SlotMachine]
	TestDice   luxMachine[LotteryMachine]
}{
	CandyParty: luxMachine[SlotMachine]{
		name: CandyParty,
		preLoadPath: []string{
			"../game_luas/Common/stdafx.lua",
			fmt.Sprintf("../game_luas/%s/lua/slot_machine/Logic/SceneSlotMachine_%s.lua", CandyParty, CandyParty),
		},
		lua_data: fmt.Sprintf("../game_luas/%s/lua_data", CandyParty),
	},
	MahSlot: luxMachine[SlotMachine]{
		name:     MahSlot,
		lua_data: fmt.Sprintf("../game_luas/%s/lua_data", MahSlot),
	},
	Promotion: luxMachine[SlotMachine]{
		name: Promotion,
		preLoadPath: []string{
			"../game_luas/Common/stdafx.lua",
			"../game_luas/Common/SceneSlotMachineCommon.lua",
			fmt.Sprintf("../game_luas/%s/lua/SceneSlotMachine_%s.lua", Promotion, Promotion),
		},
		lua_data: fmt.Sprintf("../game_luas/%s/lua_data", Promotion),
	},
	Classic7: luxMachine[SlotMachine]{
		name: Classic7,
		preLoadPath: []string{
			"../game_luas/Common/stdafx.lua",
			"../game_luas/Classic7/lua/SceneSlotMachine_HUGA_1.lua",
		},
		lua_data: fmt.Sprintf("../game_luas/%s/lua_data", Classic7),
	},
	LongFeng: luxMachine[SlotMachine]{
		name: LongFeng,
		preLoadPath: []string{
			"../game_luas/Common/stdafx.lua",
			"../game_luas/LongFeng/lua/MiniLongFengFreeSpin.lua",
			"../game_luas/LongFeng/lua/SceneSlotMachine_LongFeng.lua",
		},
		lua_data: fmt.Sprintf("../game_luas/%s/lua_data", LongFeng),
	},
	TestDice: luxMachine[LotteryMachine]{
		name: TestDice,
		preLoadPath: []string{
			fmt.Sprintf("./res/%s/lua/dice.lua", TestDice),
		},
		lua_data: fmt.Sprintf("./res/%s/lua_data", TestDice),
	},
}

/*
依檔位回傳檔案路徑
*/
func (m *luxMachine[M]) Path_data(gear string) string {
	return fmt.Sprintf(m.lua_data+"/%s.lua", gear)
}
