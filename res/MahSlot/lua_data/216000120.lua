--[[
		麻将老虎机数据脚本, 与麻将老虎机逻辑脚本配合使用
]]--
MahSlot216000120 = 
{
	version = 1,
	bets = 
	{
		50,
		100,
		250,
		500,
		1000,
		2500,
		5000,
	},

	line_coef = 100,
	tick_range = 
	{
		low = 1,
		high = 1,
	},

	tiles = 
	{
		{
			id = 1,
			type = "筒条万",
			name = "一筒",
			color = 0,
			number = 1,
		},

		{
			id = 2,
			type = "筒条万",
			name = "二筒",
			color = 0,
			number = 2,
		},

		{
			id = 3,
			type = "筒条万",
			name = "三筒",
			color = 0,
			number = 3,
		},

		{
			id = 4,
			type = "筒条万",
			name = "四筒",
			color = 0,
			number = 4,
		},

		{
			id = 5,
			type = "筒条万",
			name = "五筒",
			color = 0,
			number = 5,
		},

		{
			id = 6,
			type = "筒条万",
			name = "六筒",
			color = 0,
			number = 6,
		},

		{
			id = 7,
			type = "筒条万",
			name = "七筒",
			color = 0,
			number = 7,
		},

		{
			id = 8,
			type = "筒条万",
			name = "八筒",
			color = 0,
			number = 8,
		},

		{
			id = 9,
			type = "筒条万",
			name = "九筒",
			color = 0,
			number = 9,
		},

		{
			id = 10,
			type = "筒条万",
			name = "一条",
			color = 1,
			number = 1,
		},

		{
			id = 11,
			type = "筒条万",
			name = "二条",
			color = 1,
			number = 2,
		},

		{
			id = 12,
			type = "筒条万",
			name = "三条",
			color = 1,
			number = 3,
		},

		{
			id = 13,
			type = "筒条万",
			name = "四条",
			color = 1,
			number = 4,
		},

		{
			id = 14,
			type = "筒条万",
			name = "五条",
			color = 1,
			number = 5,
		},

		{
			id = 15,
			type = "筒条万",
			name = "六条",
			color = 1,
			number = 6,
		},

		{
			id = 16,
			type = "筒条万",
			name = "七条",
			color = 1,
			number = 7,
		},

		{
			id = 17,
			type = "筒条万",
			name = "八条",
			color = 1,
			number = 8,
		},

		{
			id = 18,
			type = "筒条万",
			name = "九条",
			color = 1,
			number = 9,
		},

		{
			id = 19,
			type = "筒条万",
			name = "一万",
			color = 2,
			number = 1,
		},

		{
			id = 20,
			type = "筒条万",
			name = "二万",
			color = 2,
			number = 2,
		},

		{
			id = 21,
			type = "筒条万",
			name = "三万",
			color = 2,
			number = 3,
		},

		{
			id = 22,
			type = "筒条万",
			name = "四万",
			color = 2,
			number = 4,
		},

		{
			id = 23,
			type = "筒条万",
			name = "五万",
			color = 2,
			number = 5,
		},

		{
			id = 24,
			type = "筒条万",
			name = "六万",
			color = 2,
			number = 6,
		},

		{
			id = 25,
			type = "筒条万",
			name = "七万",
			color = 2,
			number = 7,
		},

		{
			id = 26,
			type = "筒条万",
			name = "八万",
			color = 2,
			number = 8,
		},

		{
			id = 27,
			type = "筒条万",
			name = "九万",
			color = 2,
			number = 9,
		},

		{
			id = 28,
			type = "字",
			name = "中",
			color = 3,
			number = 1,
		},

		{
			id = 29,
			type = "字",
			name = "发",
			color = 3,
			number = 2,
		},

		{
			id = 30,
			type = "字",
			name = "白",
			color = 3,
			number = 3,
		},

		{
			id = 31,
			type = "字",
			name = "东",
			color = 3,
			number = 4,
		},

		{
			id = 32,
			type = "字",
			name = "西",
			color = 3,
			number = 5,
		},

		{
			id = 33,
			type = "字",
			name = "南",
			color = 3,
			number = 6,
		},

		{
			id = 34,
			type = "字",
			name = "北",
			color = 3,
			number = 7,
		},

	},

	base = 
	{
		se = 
		{
			k = 100,
			peng = 100,
			gang = 300,
			sentense = 50,
			suit = 100,
		},

		zi = 
		{
			k = 120,
			peng = 100,
			gang = 300,
			sentense = 0,
			suit = 500,
		},

		algorithm = 
		{
			total = 100,
			intervene = 37,
			inter_total = 100,
			stay = 12,
			continue = 18,
			suit = 70,
		},

	},

} 
MahSlot216000120_JP = 
{
	GJPs = 
	{
		{
			range = 
			{
				low = 30000,
				high = 50000,
			},

			total_bet = 300,
			line_bet = 0,
			total_win = 200,
			prize = 
			{
				{
					type = 4,
					target_id = 0,
					con_time = 0,
					val_type = 0,
					val = 5000,
				},

			},

		},

	},

	JPs = 
	{
	},

	total = 10000,
} 
