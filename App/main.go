package App

import (
	"Libs/Col"
	"Libs/Impl"
	"Libs/Json"
	"Libs/Loop"
	"Lux"
	"fmt"
	"reflect"
)

type MK struct {
	Val int
}

func (m *MK) GetPoint_Val() int {
	return m.Val
}
func (m MK) GetValueMethod_Val() int {
	return m.Val
}

func (m MK) Equal(v MK) bool {
	fmt.Println("MK Equal ori=>", m.Val, " eq=>", v.Val)
	return m.Val == v.Val
}

func Init() {

	var m = Lux.Machine(Lux.MahSlot).(*Lux.SlotMachine_MahSlot)
	//var m = Lux.Machine2[Lux.SlotMachine_MahSlot]()

	m.Play(Lux.PlayOption{
		Gear:   "416000199",
		BetNum: 100,
	})

	list := Col.NewList(1, 3, 5, 7)
	list.Add(9).
		ForEach(func(i, v int) {
			fmt.Println("List forEach i->", i, " v->", v)
		})
	list.Add(11).Add(11).Add(3)

	fmt.Println("List=>", list.ToString())

	fmt.Println("List remove 0=>", Json.String(Col.RemoveAt(list, 0)))
	fmt.Println("List RemoveBy=>", list.RemoveBy(func(i int) bool {
		return i == 11
	}).ToString())
	fmt.Println("List Where=>", list.Where(func(i int) bool {
		return i == 3
	}))

	ret := Col.Select(list, func(v int) bool {
		return v == 3
	})

	fmt.Println("List Select=>", ret)

	if reflect.TypeOf(list).Implements(reflect.TypeFor[Col.ICollector[int]]()) {
		fmt.Println("List Impl ICollector")
	}
	if reflect.TypeOf(list).Implements(reflect.TypeFor[Col.IQuery[int, *Col.List[int]]]()) {
		fmt.Println("List Impl IQuary")
	}

	//myMap := Col.NewMap[MK, int]()
	myMap := Col.NewMapFrom[MK, int](
		[]any{MK{Val: 1}, 22},
		[]any{MK{Val: 2}, 11},
		[]any{MK{Val: 3}, 33},
	)

	myRet := Col.Select(myMap, func(p Col.Key_Value[MK, int]) bool {
		return p.Key.Val == 2
	})

	fmt.Println("Map Select=>", myRet)

	//fmt.Println("Map raw=>", myMap.GetRaw())
	//myMap.Add(MK{Val: 1}, 22).Add(MK{Val: 2}, 11).Add(MK{Val: 3}, 33)

	fmt.Println("Map =>", myMap.ToString())

	fmt.Println("Map Find Value=>", myMap.Find(func(m MK) bool {
		return m.Val == 1
	}))

	fmt.Println("Map Remove=>", myMap.Remove(MK{Val: 3}).ToString())

	mk := MK{Val: 1}

	if reflect.TypeOf(mk).Implements(reflect.TypeFor[Impl.IEqual[MK]]()) {
		fmt.Println("Mk Impl *IEqual")
		fmt.Println("Mk Equal->", mk.Equal(MK{Val: 1}))
	}

	var count = 0
	Loop.While(func() (con bool, run func()) {
		count++

		con = count < 10
		run = func() {
			fmt.Println("Loop  while=>", count)
		}
		return
	})

	count = 0

	Loop.DoWhile(func() bool {
		count++

		fmt.Println("Loop do while=>", count)
		return count < 10
	})

	// m.PlayFree(Lux.PlayOption{
	// 	Gear: "120000110",
	// })
}
