package Lux

import (
	"fmt"

	lua "github.com/yuin/gopher-lua"
)

type SlotMachine string
type LotteryMachine string

const (
	CandyParty  SlotMachine    = "CandyParty"  //糖果派對
	MahJongWays SlotMachine    = "MahJongWays" //麻將來了
	MahSlot     SlotMachine    = "MahSlot"     //推倒胡
	Promotion   SlotMachine    = "Promotion"   //升官發財
	Classic7    SlotMachine    = "Classic7"    //幸運7
	LongFeng    SlotMachine    = "LongFeng"    //龍鳳呈祥
	TestDice    LotteryMachine = "TestDice"
)

var defLuaCfg = lua.Options{
	IncludeGoStackTrace: true,
	SkipOpenLibs:        false,
}

func Machine[M SlotMachine | LotteryMachine](m M) IGameMachine {
	var gm IGameMachine
	fmt.Println("Lux.Mechine m=", m)
	switch m {
	case M(CandyParty):
		gm = &SlotMachine_CandyParty{machine: machine.CandyParty}
	case M(TestDice):
		gm = &TestMachine_Dice{machine: machine.TestDice}
	case M(MahSlot):
		gm = &SlotMachine_MahSlot{machine: machine.MahSlot}
	case M(Promotion):
		gm = &SlotMachine_Promotion{machine: machine.Promotion}
	case M(Classic7):
		gm = &SlotMachine_Classic7{machine: machine.Classic7}
	case M(LongFeng):
		gm = &SlotMachine_LongFeng{machine: machine.LongFeng}
	default:
		return nil
	}

	gm.init()
	return gm
}
