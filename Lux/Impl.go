package Lux

type IGameMachine interface {
	init()
	GetGameFlag() string
	Play(op PlayOption)
}

type PlayOption struct {
	Gear    string //檔位名稱 必填
	BetNum  int    //投注次數
	BetCoin int    //投注金額
}
