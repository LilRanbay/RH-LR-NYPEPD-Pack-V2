AddCSLuaFile()

local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE"
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

local name = "NYPEPD Tomar Heliobe"

local COMPONENT = {}
COMPONENT.NotLegacy = true
COMPONENT.Model = "models/lightbars/heliobe/heliobe.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = R,
	[2] = B,
	[3] = A,
	[4] = A,
	[5] = W,
}

COMPONENT.Meta = {
	heliobe_f_main = {
		AngleOffset = -90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_r_main = {
		AngleOffset = 90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_left_main = {
		AngleOffset = -90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_right_main = {
		AngleOffset = -90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_square_main = {
		AngleOffset = -90,
		W = 4,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_square_left = {
		AngleOffset = -90,
		W = 4,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
	heliobe_square_right = {
		AngleOffset = -90,
		W = 4,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 2,
		Scale = 1
	},
}

COMPONENT.Positions = {
	--Front
	[1] = { Vector( 5.9, 9.2, 5 ), Angle( 0, -90, 0 ), "heliobe_f_main" },
	[2] = { Vector( 5.9, -9.2, 5 ), Angle( 0, -90, 0 ), "heliobe_f_main" },
	[3] = { Vector( 5.9, 18.4, 5 ), Angle( 0, -90, 0 ), "heliobe_f_main" },
	[4] = { Vector( 5.9, -18.4, 5 ), Angle( 0, -90, 0 ), "heliobe_f_main" },
	--Side
	[5] = { Vector( -2.35, 27, 5 ), Angle( 0, 0, 0 ), "heliobe_left_main" },
	[6] = { Vector( -2.35, -27, 5 ), Angle( 0, 180, 0 ), "heliobe_right_main" },
	--Rear
	[7] = { Vector( -5.9, 18.4, 5 ), Angle( 0, -90, 0 ), "heliobe_r_main" },
	[8] = { Vector( -5.9, -18.4, 5 ), Angle( 0, -90, 0 ), "heliobe_r_main" },
	[9] = { Vector( -5.9, 9.2, 5 ), Angle( 0, -90, 0 ), "heliobe_r_main" },
	[10] = { Vector( -5.9, -9.2, 5 ), Angle( 0, -90, 0 ), "heliobe_r_main" },
	[11] = { Vector( -5.9, 0, 5 ), Angle( 0, -90, 0 ), "heliobe_r_main" },
	--tkdn/corner
	[12] = { Vector( 5.9, 2, 5 ), Angle( 0, -90, 0 ), "heliobe_square_main" },
	[13] = { Vector( 5.9, -2, 5 ), Angle( 0, -90, 0 ), "heliobe_square_main" },
	[14] = { Vector( 3.9, 25.1, 5 ), Angle( 0, -45, 0 ), "heliobe_square_left" },
	[15] = { Vector( 3.9, -25.1, 5 ), Angle( 0, -135, 0 ), "heliobe_square_right" },
}

COMPONENT.Sections = {
	["heliobe_main"] = {
		[1] = {
			{ 3, R }, { 4, B }, 
		},
		[2] = {
			{ 1, R }, { 2, B }, { 5, R }, { 6, B },
		},
		[3] = {
			{ 5, R }, { 6, B },
		},
	},
	["heliobe_main2"] = {
		[1] = {
			{ 1, R }, 
		},
		[2] = {
			{ 2, B },
		},
		[3] = {
			{ 3, R },
		},
		[4] = {
			{ 4, B },
		},
	},
	["heliobe_rear"] = {
		[1] = {
			{ 7, R },
		},
		[2] = {
			{ 8, B },
		},
		[3] = {
			{ 9, R }, 
		},
		[4] = {
			{ 10, B }, 
		},
		[5] = {
			{ 11, A },
		},
	},
	["heliobe_ta"] = {
		--main
		[1] = {
			{ 7, R },
		},
		[2] = {
			{ 7, R }, { 9, R },
		},
		[3] = {
			{ 9, R }, { 11, A }, 
		},
		[4] = {
			{ 11, A },
		},
		[5] = {
			{ 11, A }, { 10, B }, 
		},
		[6] = {
			{ 10, B }, { 8, B },
		},
		[7] = {
			{ 8, B },
		},
		--center
		[8] = {
			{ 11, A }, { 9, R }, { 10, B }, 
		},
		[9] = {
			{ 7, R }, { 9, R }, { 10, B }, { 8, B }, 
		},
		[10] = {
			{ 7, R },{ 8, B }, 
		},
	},
	["heliobe_tkdn"] = {
		[1] = {
			{ 14, SW },
		},
		[2] = {
			{ 15, SW },
		},
		[3] = {
			{ 12, SW }, { 13, SW }, 
		},
		[4] = {
			{ 12, SW }, { 13, SW }, { 14, SW }, { 15, SW }, 
		},
	},
	["heliobe_wigwag"] = {
		[1] = {
			{ 14, SW , {12, 0 , 0} }, { 13, SW , {12, 0 , 0} }, { 15, SW , {-12, 0 , 0} }, { 12, SW , {-12, 0 , 0} },
		},
	},
}

COMPONENT.Patterns = {
	["heliobe_main"] = {
		["flash"] = { 1 , 0 , 1 , 0 , 1 , 2 , 0 , 2 , 0 , 2 },
		["code2"] = { 1 , 0 , 1 , 0 , 2 , 0 , 2 , 0 },
		["code3"] = { 1 , 0 , 1 , 0 , 2 , 0 , 2 , 0 },
	},
	["heliobe_main2"] = {
		["flash"] = { 1 , 0 , 1 , 0 , 1 , 3 , 0 , 3 , 0 , 3 , 1 , 0 , 1 , 0 , 1 , 
					  2 , 0 , 2 , 0 , 2 , 4 , 0 , 4 , 0 , 4 , 2 , 0 , 2 , 0 , 2 ,
		 			},
	},
	["heliobe_rear"] = {
		["scan"] = {   1 , 0 , 1 , 0 , 1,
						3 , 0 , 3 , 0 , 3,
						5 , 0 , 5 , 0 , 5,
						4 , 0 , 4 , 0 , 4,
						2 , 0 , 2 , 0 , 2,
						4 , 0 , 4 , 0 , 4,
						5 , 0 , 5 , 0 , 5,
						3 , 0 , 3 , 0 , 3,
					},
		["scan_fast"] = {   1 , 0 , 1 , 
							3 , 0 , 3 , 
							5 , 0 , 5 , 
							4 , 0 , 4 , 
							2 , 0 , 2 , 
							4 , 0 , 4 , 
							5 , 0 , 5 , 
							3 , 0 , 3 , 
						},
		["off"] = { 0 },
	},
	["heliobe_ta"] = {
		["left"] = {    7 , 0 , 7 , 0 , 7 , 0 , 7 , 0 ,
						6 , 0 , 6 , 0 , 6 , 0 , 6 , 0 ,
						5 , 0 , 5 , 0 , 5 , 0 , 5 , 0 ,
						3 , 0 , 3 , 0 , 3 , 0 , 3 , 0 ,
						2 , 0 , 2 , 0 , 2 , 0 , 2 , 0 ,
						1 , 0 , 1 , 0 , 1 , 0 , 1 , 0 , 
						0 , 0 
					},

		["right"] = {   1 , 0 , 1 , 0 , 1 , 0 , 1 , 0 , 
						2 , 0 , 2 , 0 , 2 , 0 , 2 , 0 , 
						3 , 0 , 3 , 0 , 3 , 0 , 3 , 0 , 
						5 , 0 , 5 , 0 , 5 , 0 , 5 , 0 ,
						6 , 0 , 6 , 0 , 6 , 0 , 6 , 0 ,
						7 , 0 , 7 , 0 , 7 , 0 , 7 , 0 ,
						0 , 0 
					},
		["center"] = {   4 , 0 , 4 , 0 , 4 , 0 , 4 , 0 , 
						8 , 0 , 8 , 0 , 8 , 0 , 8 , 0 , 
						9 , 0 , 9 , 0 , 9 , 0 , 9 , 0 , 
						10 , 0 , 10 , 0 , 10 , 0 , 10 , 0 , 
						0 , 0 , 
					},
	},
	["heliobe_wigwag"] = {
		["flash"] = { 1 },
	},
}

COMPONENT.TrafficDisconnect = {

}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["heliobe_rear"] = "scan",
			},
			M2 = {
				["heliobe_main"] = "flash",
				["heliobe_rear"] = "scan",
			},
			M3 = {
				["heliobe_main"] = "flash",
				["heliobe_rear"] = "scan",
				["heliobe_wigwag"] = "flash",
			}
		},
	Auxiliary = {
			C = {

			},
			L = {
				["heliobe_ta"] = "left",
				["heliobe_rear"] = "off",
			},
			R = {
				["heliobe_ta"] = "right",
				["heliobe_rear"] = "off",
			},
			D = {
				["heliobe_ta"] = "center",
				["heliobe_rear"] = "off",
			}
		},
	Illumination = {
		T = {
			{ 12, SW }, { 13, SW },
		},
		F = {
			{ 12, SW }, { 13, SW }, { 14, SW }, { 15, SW }, 
		},
		L = {
			 {14, SW }, 
		},
		R = {
			{ 15, SW }, 
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )