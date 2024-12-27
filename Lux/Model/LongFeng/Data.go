package LuxLongFeng

type Result_Main struct {
	Result    [][]int64    `json:"result"`
	PrizeLine []prize_line `json:"prize_line"`
	Stay      [][]int64    `json:"stay"`
}

type Result_FreeSpin struct {
	Result       [][]int64    `json:"result"`
	WcopyWildIDS []int64      `json:"wcopy_wild_ids"`
	PrizeLine    []prize_line `json:"prize_line"`
	Stay         [][]int64    `json:"stay"`
}

type prize_line struct {
	Type       string  `json:"type"`
	ObjID      int64   `json:"obj_id"`
	GroupID    int64   `json:"group_id"`
	Continue   int64   `json:"continue"`
	Prize      []prize `json:"prize"`
	WithWild   bool    `json:"with_wild"`
	WildCount  int64   `json:"wild_count"`
	ExtraRate  int64   `json:"extra_rate"`
	LinesCount int64   `json:"lines_count"`
}

type prize struct {
	Event int64 `json:"event"`
	Param int64 `json:"param"`
}
