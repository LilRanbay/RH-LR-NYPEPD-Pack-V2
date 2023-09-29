AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "NYPEPD Whelen Liberty"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_refresh.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {
	{1,2},
	{2,0}
}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "AMBER",
	[3] = "WHITE",
	[4] = "S_WHITE"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 8,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.22, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( .425, 0, 0 ),
			Vector( -2.22, 0, 0 ),
			Vector( -1.3, 0, 0 ),
			Vector( -.425, 0, 0 ),
		}
	},
	liberty_f_ang = {
	AngleOffset = -90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 15.9,
		H = 19,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3.6, 0, 0 ),
			Vector( 2.4, 0, 0 ),
			Vector( 1.2, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3.6, 0, 0 ),
			Vector( -2.4, 0, 0 ),
			Vector( -1.2, 0, 0 ),
		}
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 13.5,
		H = 8,
		Sprite = "sprites/emv/lightbar",
		Scale = 0.75,
		WMult = 2.25,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 2.5,
		H = 2.5,
		Sprite = "sprites/emv/light_circle",
		Scale = .55,
		WMult = 1,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	},
}
 
COMPONENT.Positions = {

	[1] = { Vector( 3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( -3.82, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[3] = { Vector( 11.3, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( -11.3, 8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[5] = { Vector( 27.97, 5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_f_ang", 1 },
	[6] = { Vector( -27.97, 5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_f_ang", 2 },

	[7] = { Vector( 27.97, -5.2, 4.59 ), Angle( 0, 40.08, 0 ), "liberty_r_ang", 3 },
	[8] = { Vector( -27.97, -5.2, 4.59 ), Angle( 0, -40.08, 0 ), "liberty_r_ang", 4 },
	[9] = { Vector( 18.74, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( -18.74, -8.99, 4.56), Angle( 0, 0, 0 ), "liberty_r_main" },
	[11] = { Vector( 11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[12] = { Vector( -11.29, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[13] = { Vector( 3.82, -8.99, 4.56 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( -3.82, -8.99, 4.56  ), Angle( 0, 0, 0 ), "liberty_r_main" },

    [15] = { Vector( 18.6, 9.1, 4.59 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( -18.6, 9.1, 4.59 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -31.81, -0.01, 4.59 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 31.81, -0.01, 4.59 ), Angle( 0, -90, 0 ), "liberty_alley" },

}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		[1] = {
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_1" }, { 4, "_1" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_1" }, { 10, "_1" },
			{ 11, "_2" }, { 12, "_2" }, 
			{ 13, "_2" }, { 14, "_2" },
			{ 15, "_4" }, { 16, "_4" },
			{ 17, "_4" }, { 18, "_4" },
		},
	},
	["auto_whelen_liberty_sx_front_inner"] = {
		[1] = {
			{ 1, "_1" }, { 2, "_1" }
		},
		[2] = {
			{ 1, "_1" }
		},
		[3] = {
			{ 2, "_1" }
		},
		[4] = {
			{ 1, "_3" }
		},
		[5] = {
			{ 2, "_3" }
		},
	},
	["auto_whelen_liberty_sx_front_outer"] = {
		[1] = {
			{ 3, "_1" }, { 4, "_1" }
		},
		[2] = {
			{ 3, "_1" }
		},
		[3] = {
			{ 4, "_1" }
		},
		[4] = {
			{ 3, "_3" }
		},
		[5] = {
			{ 4, "_3" }
		},
	},
	["auto_whelen_liberty_sx_front_corner"] = {
		[1] = {
			{ 5, "_1" }, { 6, "_1" }
		},
		[2] = {
			{ 5, "_1" }
		},
		[3] = {
			{ 6, "_1" }
		},
	},
	["auto_whelen_liberty_sx_rear_corner"] = {
		[1] = {
			{ 7, "_1" }, { 8, "_1" },
		},
		[2] = {
			{ 7, "_1" }
		},
		[3] = {
			{ 8, "_1" }
		},
	},
	["auto_whelen_liberty_sx_rear_outer"] = {
		[1] = {
			{ 9, "_1" }, { 10, "_1" },
		},
		[2] = {
			{ 9, "_1" }
		},
		[3] = {
			{ 10, "_1" }
		},
		[4] = {
			{ 9, "_2" }
		},
		[5] = {
			{ 10, "_2" }
		},
	},
	["auto_whelen_liberty_sx_rear_middle"] = {
		[1] = {
			{ 11, "_1" }, { 12, "_1" }, 
		},
		[2] = {
			{ 11, "_1" }
		},
		[3] = {
			{ 12, "_1" }
		},
		[4] = {
			{ 11, "_2" }
		},
		[5] = {
			{ 12, "_2" }
		},
	},
	["auto_whelen_liberty_sx_rear_inner"] = {
		[1] = {
			{ 13, "_1" }, { 14, "_1" },
		},
		[2] = {
			{ 13, "_1" }
		},
		[3] = {
			{ 14, "_1" },
		},
		[4] = {
			{ 13, "_2" }
		},
		[5] = {
			{ 14, "_2" },
		},
	},
	["auto_whelen_liberty_sx_traffic"] = {
		{ { 11, "_2" }, { 13, "_2" }, { 14, "_2" }, { 12, "_2" } },
		
		-- LEFT --
		{ { 11, "_2" } },
		{ { 13, "_2" } },
		{ { 14, "_2" } },
		{ { 12, "_2" } },
		
		-- DIVERGE --
		{ { 13, "_2" }, { 14, "_2" } },
		{ { 11, "_2" }, { 12, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_liberty_sx"] = {
        ["debug"] = { 1 },
	},
	["auto_whelen_liberty_sx_front_inner"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,2,0,2,0,2,0,
			5,0,5,0,5,0,5,0,
			4,0,4,0,4,0,4,0,
			3,0,3,0,3,0,3,0,
		},
	},
	["auto_whelen_liberty_sx_front_outer"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,0,2,0,0,2,0,0,
			3,0,0,3,0,0,3,0,0,
			4,0,0,4,0,0,4,0,0,
			5,0,0,5,0,0,5,0,0
		},
	},
	["auto_whelen_liberty_sx_front_corner"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,2,0,2,0,
			3,0,3,0,3,0,
		},
	},
	["auto_whelen_liberty_sx_rear_corner"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,2,0,2,0,
			3,0,3,0,3,0,
		},
	},
	["auto_whelen_liberty_sx_rear_outer"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,0,2,0,0,2,0,0,
			3,0,0,3,0,0,3,0,0,
			4,0,0,4,0,0,4,0,0,
			5,0,0,5,0,0,5,0,0
		},
	},
	["auto_whelen_liberty_sx_rear_middle"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,2,0,2,0,2,0,
			5,0,5,0,5,0,5,0,
			4,0,4,0,4,0,4,0,
			3,0,3,0,3,0,3,0,
		},
	},
	["auto_whelen_liberty_sx_rear_inner"] = {
        ["debug"] = { 1 },
		
		["park"] = { 1 },
		["code3"] = { 
			2,0,2,0,
			3,0,3,0,
			5,0,5,0,
			4,0,4,0,
		},
	},
	["auto_whelen_liberty_sx_traffic"] = {
        ["debug"] = { 1 },
		
		["left"] = { 2,0,3,0,4,0,5,0,5,0,5,0,5,0,0 },
		["diverge"] = { 6,0,6,0,7,0,7,0,7,0,7,0,0 },
		["right"] = { 5,0,4,0,3,0,2,0,2,0,2,0,2,0,0 },
	},
}

COMPONENT.TrafficDisconnect = { 
	["auto_whelen_liberty_sx_traffic"] = {
		11, 12, 13, 14
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_liberty_sx_front_inner"] = "park",
				["auto_whelen_liberty_sx_front_outer"] = "park",
				["auto_whelen_liberty_sx_front_corner"] = "park",
			},
			M3 = {
				["auto_whelen_liberty_sx_front_inner"] = "code3",
				["auto_whelen_liberty_sx_front_outer"] = "code3",
				["auto_whelen_liberty_sx_front_corner"] = "code3",
				["auto_whelen_liberty_sx_rear_corner"] = "code3",
				["auto_whelen_liberty_sx_rear_outer"] = "code3",
				["auto_whelen_liberty_sx_rear_middle"] = "code3",
				["auto_whelen_liberty_sx_rear_inner"] = "code3",
			}
		},
	Auxiliary = {
			L = {
				["auto_whelen_liberty_sx_cruise"] = "left",
				["auto_whelen_liberty_sx_traffic"] = "left"
			},
			R = {
				["auto_whelen_liberty_sx_cruise"] = "right",
				["auto_whelen_liberty_sx_traffic"] = "right"
			},
			D = {
				["auto_whelen_liberty_sx_cruise"] = "diverge",
				["auto_whelen_liberty_sx_traffic"] = "diverge"
			}
		},
	Illumination = {
		L = {
			{ 17, SW }
		},
		R = {
			{ 18, SW }
		},
		F = {
			{ 15, SW }, { 16, SW }
		},
		T = {
			{ 15, SW }, { 16, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )