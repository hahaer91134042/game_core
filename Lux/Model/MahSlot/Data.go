package LuxMahSlot

import "fmt"

type Data_Main struct {
	Version    int
	Bets       []int
	LineCoef   int
	TickRange  m_range
	Tiles      []tile
	Base       base
	PrizeMulti []int
}

func (d Data_Main) Flag(gear string) string {
	return fmt.Sprintf("MahSlot%s", gear)
}

type Data_JP struct {
	GJPs  []gjp
	JPs   []jp
	Total int
}

func (d Data_JP) Flag(gear string) string {
	return fmt.Sprintf("MahSlot%s_JP", gear)
}

type gjp struct {
	Range    m_range
	TotalBet int
	LineBet  int
	TotalWin int
	Prize    []prize
}
type jp struct {
	Range    m_range
	TotalBet int
	LineBet  int
	TotalWin int
	Prize    []prize
}

type prize struct {
	Type     int
	TargetId int
	ConTime  int
	ValType  int
	Val      int
}

type m_range struct {
	Low  int
	High int
}

type tile struct {
	Id     int
	Type   string
	Name   string
	Color  int
	Number int
}

type base struct {
	Se        base_se
	Zi        base_zi
	Algorithm base_algorithm
}

type base_se struct {
	K        int
	Peng     int
	Gang     int
	Sentense int
	Suit     int
}
type base_zi struct {
	K        int
	Peng     int
	Gang     int
	Sentense int
	Suit     int
}

type base_algorithm struct {
	Total      int
	Intervene  int
	InterTotal int
	Stay       int
	Continue   int
	Suit       int
}


