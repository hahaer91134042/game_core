--[[
		老虎机数据脚本, 与老虎机逻辑脚本配合使用
]]--
Promotion011450199 = 
{
	version = 
	{
		data_type = "HUGA",
		ver = 2,
	},

	is_fa = true,
	bets = 
	{
		100,
		200,
		500,
		1000,
		2000,
		5000,
		10000,
	},

	line_coef = 100,
	prize_den = 1,
	freelife_fixed = 3,
	freelife_coef = 1,
	tick_range = 
	{
		low = 1,
		high = 1,
	},

	objs = 
	{
		{
			id = 1,
			name = "WILD",
			icon = "",
			k = 500,
			cont2 = 
			{
			},

			cont3 = 
			{
			},

			cont4 = 
			{
			},

			cont5 = 
			{
			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				9,
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 1,
		},

		{
			id = 2,
			name = "Wenguan",
			icon = "",
			k = 300,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 3,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 10,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 50,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
				2,
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 3,
			name = "Wuguan",
			icon = "",
			k = 300,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 3,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 10,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 50,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 5,
				high = 5,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
				3,
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 4,
			name = "WenFu",
			icon = "",
			k = 400,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 13,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 5,
			name = "WuFu",
			icon = "",
			k = 400,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 13,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 6,
			name = "A",
			icon = "",
			k = 550,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 1,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 7,
			name = "K",
			icon = "",
			k = 700,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 1,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 8,
			name = "Q",
			icon = "",
			k = 850,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 1,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

		{
			id = 9,
			name = "J",
			icon = "",
			k = 1000,
			cont2 = 
			{
			},

			cont3 = 
			{
				{
					event = 0,
					param = 1,
				},

			},

			cont4 = 
			{
				{
					event = 0,
					param = 2,
				},

			},

			cont5 = 
			{
				{
					event = 0,
					param = 5,
				},

			},

			full = 
			{
			},

			scatter_cnt = 
			{
			},

			wild = 
			{
			},

			scatter = 
			{
				flag = false,
				cont1 = 
				{
				},

				cont2 = 
				{
				},

				cont3 = 
				{
				},

				cont4 = 
				{
				},

				cont5 = 
				{
				},

			},

			scatter_box = 
			{
				flag = false,
				denominator = 0,
				low = 0,
				high = 0,
			},

			extra_rate = 0,
			mutex = 
			{
			},

			roll_mutex = 
			{
			},

			line_mutex = 
			{
			},

			disable_copy = 0,
		},

	},

	groups = 
	{
	},

	rolls = 
	{
		line_count = 5,
		roll_count = 5,
		rolls = 
		{
			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

			{
				{
					id = 1,
					drag = 80,
					cur_total = 80,
				},

				{
					id = 2,
					drag = 300,
					cur_total = 380,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 680,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1080,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1480,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 2030,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2730,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3580,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4580,
				},

			},

		},

	},

	kick_out = 
	{
		multiple = 
		{
		},

		quota = 
		{
		},

		total = 100,
	},

	uc = 
	{
		uc_type = "UC_MUTEX",
		total = 0,
		rolls = 
		{
			{
				order = 10,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 100,
				total = 100,
			},

			{
				order = 12,
				relation = 
				{
					{
						target = 1,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 90,
				total = 100,
			},

			{
				order = 14,
				relation = 
				{
					{
						target = 1,
						weight = 50,
					},

					{
						target = 2,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 90,
				total = 100,
			},

			{
				order = 16,
				relation = 
				{
					{
						target = 1,
						weight = 33,
					},

					{
						target = 2,
						weight = 33,
					},

					{
						target = 3,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 90,
				total = 100,
			},

			{
				order = 18,
				relation = 
				{
					{
						target = 1,
						weight = 25,
					},

					{
						target = 2,
						weight = 25,
					},

					{
						target = 3,
						weight = 25,
					},

					{
						target = 4,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 90,
				total = 100,
			},

			{
				order = 20,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 90,
				total = 100,
			},

			{
				order = 22,
				relation = 
				{
					{
						target = 6,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 80,
				total = 100,
			},

			{
				order = 24,
				relation = 
				{
					{
						target = 6,
						weight = 50,
					},

					{
						target = 7,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 80,
				total = 100,
			},

			{
				order = 26,
				relation = 
				{
					{
						target = 6,
						weight = 33,
					},

					{
						target = 7,
						weight = 33,
					},

					{
						target = 8,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 80,
				total = 100,
			},

			{
				order = 28,
				relation = 
				{
					{
						target = 6,
						weight = 25,
					},

					{
						target = 7,
						weight = 25,
					},

					{
						target = 8,
						weight = 25,
					},

					{
						target = 9,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 80,
				total = 100,
			},

			{
				order = 30,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 20,
				uc = 80,
				total = 100,
			},

			{
				order = 32,
				relation = 
				{
					{
						target = 11,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 20,
				uc = 70,
				total = 100,
			},

			{
				order = 34,
				relation = 
				{
					{
						target = 11,
						weight = 50,
					},

					{
						target = 12,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 20,
				uc = 70,
				total = 100,
			},

			{
				order = 36,
				relation = 
				{
					{
						target = 11,
						weight = 33,
					},

					{
						target = 12,
						weight = 33,
					},

					{
						target = 13,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 20,
				uc = 70,
				total = 100,
			},

			{
				order = 38,
				relation = 
				{
					{
						target = 11,
						weight = 25,
					},

					{
						target = 12,
						weight = 25,
					},

					{
						target = 13,
						weight = 25,
					},

					{
						target = 14,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 20,
				uc = 70,
				total = 100,
			},

			{
				order = 40,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 30,
				uc = 70,
				total = 100,
			},

			{
				order = 42,
				relation = 
				{
					{
						target = 16,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 30,
				uc = 60,
				total = 100,
			},

			{
				order = 44,
				relation = 
				{
					{
						target = 16,
						weight = 50,
					},

					{
						target = 17,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 30,
				uc = 60,
				total = 100,
			},

			{
				order = 46,
				relation = 
				{
					{
						target = 16,
						weight = 33,
					},

					{
						target = 17,
						weight = 33,
					},

					{
						target = 18,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 30,
				uc = 60,
				total = 100,
			},

			{
				order = 48,
				relation = 
				{
					{
						target = 16,
						weight = 25,
					},

					{
						target = 17,
						weight = 25,
					},

					{
						target = 18,
						weight = 25,
					},

					{
						target = 19,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 30,
				uc = 60,
				total = 100,
			},

			{
				order = 50,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 40,
				uc = 60,
				total = 100,
			},

			{
				order = 52,
				relation = 
				{
					{
						target = 21,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 40,
				uc = 50,
				total = 100,
			},

			{
				order = 54,
				relation = 
				{
					{
						target = 21,
						weight = 50,
					},

					{
						target = 22,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 40,
				uc = 50,
				total = 100,
			},

			{
				order = 56,
				relation = 
				{
					{
						target = 23,
						weight = 33,
					},

					{
						target = 23,
						weight = 33,
					},

					{
						target = 23,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 40,
				uc = 50,
				total = 100,
			},

			{
				order = 58,
				relation = 
				{
					{
						target = 21,
						weight = 25,
					},

					{
						target = 22,
						weight = 25,
					},

					{
						target = 23,
						weight = 25,
					},

					{
						target = 24,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 40,
				uc = 50,
				total = 100,
			},

		},

		order = 
		{
			1,
			2,
			3,
			4,
			5,
			6,
			7,
			8,
			9,
			10,
			11,
			12,
			13,
			14,
			15,
			16,
			17,
			18,
			19,
			20,
			21,
			22,
			23,
			24,
			25,
		},

	},

	sa = 
	{
		items = 
		{
		},

		total = 100000,
	},

} 
Promotion011450199_Free = 
{
	obj_k = 
	{
		500,
		300,
		300,
		400,
		400,
		550,
		700,
		850,
		1000,
	},

	rolls = 
	{
		line_count = 5,
		roll_count = 5,
		rolls = 
		{
			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

			{
				{
					id = 2,
					drag = 300,
					cur_total = 300,
				},

				{
					id = 3,
					drag = 300,
					cur_total = 600,
				},

				{
					id = 4,
					drag = 400,
					cur_total = 1000,
				},

				{
					id = 5,
					drag = 400,
					cur_total = 1400,
				},

				{
					id = 6,
					drag = 550,
					cur_total = 1950,
				},

				{
					id = 7,
					drag = 700,
					cur_total = 2650,
				},

				{
					id = 8,
					drag = 850,
					cur_total = 3500,
				},

				{
					id = 9,
					drag = 1000,
					cur_total = 4500,
				},

			},

		},

	},

	uc = 
	{
		uc_type = "UC_MUTEX",
		total = 0,
		rolls = 
		{
			{
				order = 10,
				relation = 
				{
				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 0,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 100,
				total = 100,
			},

			{
				order = 12,
				relation = 
				{
					{
						target = 1,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 14,
				relation = 
				{
					{
						target = 1,
						weight = 50,
					},

					{
						target = 2,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 16,
				relation = 
				{
					{
						target = 1,
						weight = 33,
					},

					{
						target = 2,
						weight = 33,
					},

					{
						target = 3,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 18,
				relation = 
				{
					{
						target = 1,
						weight = 25,
					},

					{
						target = 2,
						weight = 25,
					},

					{
						target = 3,
						weight = 25,
					},

					{
						target = 4,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 20,
				relation = 
				{
					{
						target = 1,
						weight = 20,
					},

					{
						target = 2,
						weight = 20,
					},

					{
						target = 3,
						weight = 20,
					},

					{
						target = 4,
						weight = 20,
					},

					{
						target = 5,
						weight = 20,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 1,
						weight = 0,
					},

					{
						target = 2,
						weight = 0,
					},

					{
						target = 3,
						weight = 0,
					},

					{
						target = 4,
						weight = 0,
					},

					{
						target = 5,
						weight = 0,
					},

				},

				cp_numerator = 40,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 50,
				total = 100,
			},

			{
				order = 22,
				relation = 
				{
					{
						target = 6,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 24,
				relation = 
				{
					{
						target = 6,
						weight = 50,
					},

					{
						target = 7,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 26,
				relation = 
				{
					{
						target = 6,
						weight = 33,
					},

					{
						target = 7,
						weight = 33,
					},

					{
						target = 8,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 28,
				relation = 
				{
					{
						target = 6,
						weight = 25,
					},

					{
						target = 7,
						weight = 25,
					},

					{
						target = 8,
						weight = 25,
					},

					{
						target = 9,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 30,
				relation = 
				{
					{
						target = 6,
						weight = 20,
					},

					{
						target = 7,
						weight = 20,
					},

					{
						target = 8,
						weight = 20,
					},

					{
						target = 9,
						weight = 20,
					},

					{
						target = 10,
						weight = 20,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 6,
						weight = 0,
					},

					{
						target = 7,
						weight = 0,
					},

					{
						target = 8,
						weight = 0,
					},

					{
						target = 9,
						weight = 0,
					},

					{
						target = 10,
						weight = 0,
					},

				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 60,
				total = 100,
			},

			{
				order = 32,
				relation = 
				{
					{
						target = 11,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 34,
				relation = 
				{
					{
						target = 11,
						weight = 50,
					},

					{
						target = 12,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 36,
				relation = 
				{
					{
						target = 11,
						weight = 33,
					},

					{
						target = 12,
						weight = 33,
					},

					{
						target = 13,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 38,
				relation = 
				{
					{
						target = 11,
						weight = 25,
					},

					{
						target = 12,
						weight = 25,
					},

					{
						target = 13,
						weight = 25,
					},

					{
						target = 14,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 40,
				relation = 
				{
					{
						target = 11,
						weight = 20,
					},

					{
						target = 12,
						weight = 20,
					},

					{
						target = 13,
						weight = 20,
					},

					{
						target = 14,
						weight = 20,
					},

					{
						target = 15,
						weight = 20,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 11,
						weight = 0,
					},

					{
						target = 12,
						weight = 0,
					},

					{
						target = 13,
						weight = 0,
					},

					{
						target = 14,
						weight = 0,
					},

					{
						target = 15,
						weight = 0,
					},

				},

				cp_numerator = 20,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 70,
				total = 100,
			},

			{
				order = 42,
				relation = 
				{
					{
						target = 16,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 44,
				relation = 
				{
					{
						target = 16,
						weight = 50,
					},

					{
						target = 17,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 46,
				relation = 
				{
					{
						target = 16,
						weight = 33,
					},

					{
						target = 17,
						weight = 33,
					},

					{
						target = 18,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 48,
				relation = 
				{
					{
						target = 16,
						weight = 25,
					},

					{
						target = 17,
						weight = 25,
					},

					{
						target = 18,
						weight = 25,
					},

					{
						target = 19,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 50,
				relation = 
				{
					{
						target = 16,
						weight = 20,
					},

					{
						target = 17,
						weight = 20,
					},

					{
						target = 18,
						weight = 20,
					},

					{
						target = 19,
						weight = 20,
					},

					{
						target = 20,
						weight = 20,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
					{
						target = 16,
						weight = 0,
					},

					{
						target = 17,
						weight = 0,
					},

					{
						target = 18,
						weight = 0,
					},

					{
						target = 19,
						weight = 0,
					},

					{
						target = 20,
						weight = 0,
					},

				},

				cp_numerator = 10,
				col_cp_numerator = 0,
				uc_mutex_numerator = 10,
				uc = 80,
				total = 100,
			},

			{
				order = 52,
				relation = 
				{
					{
						target = 21,
						weight = 100,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 54,
				relation = 
				{
					{
						target = 21,
						weight = 50,
					},

					{
						target = 22,
						weight = 50,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 56,
				relation = 
				{
					{
						target = 23,
						weight = 33,
					},

					{
						target = 23,
						weight = 33,
					},

					{
						target = 23,
						weight = 33,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

			{
				order = 58,
				relation = 
				{
					{
						target = 21,
						weight = 25,
					},

					{
						target = 22,
						weight = 25,
					},

					{
						target = 23,
						weight = 25,
					},

					{
						target = 24,
						weight = 25,
					},

				},

				columncopy = 
				{
				},

				uncopy = 
				{
				},

				cp_numerator = 30,
				col_cp_numerator = 0,
				uc_mutex_numerator = 0,
				uc = 70,
				total = 100,
			},

		},

		order = 
		{
			1,
			2,
			3,
			4,
			5,
			6,
			7,
			8,
			9,
			10,
			11,
			12,
			13,
			14,
			15,
			16,
			17,
			18,
			19,
			20,
			21,
			22,
			23,
			24,
			25,
		},

	},

} 
Promotion011450199_JP = 
{
	GJPs = 
	{
	},

	JPs = 
	{
	},

	total = 10000,
} 
