package LuxCandy

import "fmt"

type version struct {
	DataType string
	Ver      int
}

type tick_range struct {
	Low  int
	High int
}

type sa_item_obj struct {
	ObjId   int
	GroupId int
	Weight  int
}
type sa_item struct {
	Name    string
	Rate    int
	Objs    []sa_item_obj
	ArrRate [][]int
}

type sa_main struct {
	Items []sa_item
	Total int64
}

type cont_obj struct {
	Event int
	Param int
}

type lv_obj struct {
	Id          int
	Name        string
	Icon        string
	K           int
	Cont2       []cont_obj
	Cont3       []cont_obj
	Cont4       []cont_obj
	Cont5       []cont_obj
	Cont6       []cont_obj
	Cont7       []cont_obj
	Cont8       []cont_obj
	Cont9       []cont_obj
	Cont10      []cont_obj
	Cont11      []cont_obj
	Cont12      []cont_obj
	Cont13      []cont_obj
	Cont14      []cont_obj
	Cont15      []cont_obj
	Cont16      []cont_obj
	Cont17      []cont_obj
	Cont18      []cont_obj
	Cont19      []cont_obj
	Cont20      []cont_obj
	Cont21      []cont_obj
	Cont22      []cont_obj
	Cont23      []cont_obj
	Cont24      []cont_obj
	Cont25      []cont_obj
	Cont26      []cont_obj
	Cont27      []cont_obj
	Cont28      []cont_obj
	Cont29      []cont_obj
	Cont30      []cont_obj
	Cont31      []cont_obj
	Cont32      []cont_obj
	Cont33      []cont_obj
	Cont34      []cont_obj
	Cont35      []cont_obj
	Cont36      []cont_obj
	Key         int
	Full        any
	Wild        any
	ExtraRate   int
	Mutex       any
	RollMutex   any
	LineMutex   any
	Bonus       int
	Jackpot     int
	DisableCopy int
}

type rolls struct {
	LineCount int
	RollCount int
	Rolls     [][]roll_item
}

type roll_item struct {
	Id       int
	Drag     int
	CurTotal int
}

type kick_out struct {
	Multiple []ko_multiple
	Quota    []ko_quota
	Total    int
}

type ko_multiple struct {
	KeyVal int
	Weight int
}
type ko_quota struct {
	KeyVal int
	Weight int
}
type relation struct {
	Target int
	Weight int
}
type uc_roll struct {
	Order    int
	Relation []relation
	Uc       int
}
type uc struct {
	Total int
	Rolls []uc_roll
	Order []int
}

type prize_multi struct {
	K     int
	Prize int
}

type level struct {
	Sa           []sa_main
	Objs         []lv_obj
	Groups       []any
	Rolls        rolls
	KickOut      kick_out
	Uc           uc
	BonusWeight  int
	PassKeyCount int
	Deno         int
	PrizeMulti   []prize_multi
}

type jackpot struct {
	Total int64
	Type  []jp_type
}

type jp_type struct {
	PrizeCount int
	Weight     int
}

type jp_range struct {
	Low  int
	High int
}

type jp_prize struct {
	Type     int
	TargetId int
	ConTime  int
	ValType  int
	Val      int
}

type jp struct {
	Range    jp_range
	TotalBet int
	LineBet  int
	TotalWin int
	Prize    []jp_prize
}

type Data_Main struct {
	Version   version
	IsFa      bool
	Bets      []int
	Lines     []int
	TickRange tick_range
	WinLine   []any
	ObjDeno   int
	Levels    []level
	Jackpot   jackpot
}

func (d Data_Main) Flag(gear string) string {
	return fmt.Sprintf("CandyParty%s", gear)
}

type Data_FreeSpin struct {
	ObjDeno int
	Levels  []level
}

func (d Data_FreeSpin) Flag(gear string) string {
	return fmt.Sprintf("CandyParty%s_FreeSpin", gear)
}

type Data_JP struct {
	GJPs  []jp
	JPs   []jp
	Total int
}

func (d Data_JP) Flag(gear string) string {
	return fmt.Sprintf("CandyParty%s_JP", gear)
}
