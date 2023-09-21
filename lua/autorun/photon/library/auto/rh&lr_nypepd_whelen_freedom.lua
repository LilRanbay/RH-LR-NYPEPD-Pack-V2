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

local name = "NYPEPD Whelen Freedom"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_ultra_freedom.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {
	{1,2}
}

COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "WHITE",
	[3] = "RED",
	[4] = "AMBER",
	[5] = "WHITE"
}

COMPONENT.SubMaterials = {
	["2"] = "rh&lr/NYPEPD/liberty_glass",
}

COMPONENT.Meta = {
	freedom_f_main = {
		AngleOffset = -90,
		W = 8.6,
		H = 7.5,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.35, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .46, 0, 0 ),
			Vector( -2.35, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.46, 0, 0 ),
		}
	},
	freedom_r_main = {
		AngleOffset = 90,
		W = 8.6,
		H = 7.5,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.35, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .46, 0, 0 ),
			Vector( -2.35, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.46, 0, 0 ),
		}
	},
	freedom_f_ang = {
	AngleOffset = -90,
		W = 17,
		H = 15.3,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3.85, 0, 0 ),
			Vector( 2.57, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( -0.06, 0, 0 ),
			Vector( -3.85, 0, 0 ),
			Vector( -2.57, 0, 0 ),
			Vector( -1.3, 0, 0 ),
		}
	},
	freedom_r_ang = {
		AngleOffset = 90,
		W = 17,
		H = 15.3,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3.85, 0, 0 ),
			Vector( 2.57, 0, 0 ),
			Vector( 1.3, 0, 0 ),
			Vector( -0.06, 0, 0 ),
			Vector( -3.85, 0, 0 ),
			Vector( -2.57, 0, 0 ),
			Vector( -1.3, 0, 0 ),
		}
	},
	freedom_tri = {
		AngleOffset = -90,
		W = 3.75,
		H = 3.75,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( -.55, -.45, 0 ),
			Vector( 0, .5, 0 ),
			Vector( .55, -.45, 0 )
		}
	}
}
 
COMPONENT.Positions = {

	-- BOTTOM
	[1] = { Vector( 3.82, 7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[2] = { Vector( -3.82, 7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[3] = { Vector( 10.75, 7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[4] = { Vector( -10.75, 7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[5] = { Vector( 27.625, 5.225, -0.95 ), Angle( 0, -33, 0 ), "freedom_f_ang", 1 },
	[6] = { Vector( -27.625, 5.225, -0.95 ), Angle( 0, 33, 0 ), "freedom_f_ang", 2 },

	[7] = { Vector( 27.625, -5.225, -0.95 ), Angle( 0, 33, 0 ), "freedom_r_ang", 3 },
	[8] = { Vector( -27.625, -5.225, -0.95 ), Angle( 0, -33, 0 ), "freedom_r_ang", 4 },

	[9] = { Vector( 17.65, -7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[10] = { Vector( -17.65, -7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[11] = { Vector( 10.75, -7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[12] = { Vector( -10.75, -7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[13] = { Vector( 3.82, -7.98, -0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[14] = { Vector( -3.82, -7.98, -0.95  ), Angle( 0, 0, 0 ), "freedom_r_main" },

	-- TOP
	[15] = { Vector( 3.82, 7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[16] = { Vector( -3.82, 7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[17] = { Vector( 10.75, 7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },
	[18] = { Vector( -10.75, 7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_f_main" },

	[19] = { Vector( 27.625, 5.225, 0.95 ), Angle( 0, -33, 0 ), "freedom_f_ang", 1 },
	[20] = { Vector( -27.625, 5.225, 0.95 ), Angle( 0, 33, 0 ), "freedom_f_ang", 2 },

	[21] = { Vector( 27.625, -5.225, 0.95 ), Angle( 0, 33, 0 ), "freedom_r_ang", 3 },
	[22] = { Vector( -27.625, -5.225, 0.95 ), Angle( 0, -33, 0 ), "freedom_r_ang", 4 },

	[23] = { Vector( 17.65, -7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[24] = { Vector( -17.65, -7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[25] = { Vector( 10.75, -7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[26] = { Vector( -10.75, -7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },

	[27] = { Vector( 3.82, -7.98, 0.95 ), Angle( 0, 0, 0 ), "freedom_r_main" },
	[28] = { Vector( -3.82, -7.98, 0.95  ), Angle( 0, 0, 0 ), "freedom_r_main" },

	-- TAKEDOWNS & ALLEY LIGHTS
    [29] = { Vector( 16.3, 8.0825, -0.15 ), Angle( 0, 0, 0 ), "freedom_tri" },
	[30] = { Vector( -16.3, 8.0825, -0.15 ), Angle( 0, 0, 0 ), "freedom_tri" },
	[31] = { Vector( 18.98, 8.0825, -0.15 ), Angle( 0, 0, 0 ), "freedom_tri" },
	[32] = { Vector( -18.98, 8.0825, -0.15 ), Angle( 0, 0, 0 ), "freedom_tri" },

	[33] = { Vector( -32.155, -0.01, -0.95 ), Angle( 0, 90, 0 ), "freedom_tri" },
	[34] = { Vector( 32.155, -0.01, -0.95 ), Angle( 0, -90, 0 ), "freedom_tri" },
	[35] = { Vector( -32.155, -0.01, 0.95 ), Angle( 0, 90, 0 ), "freedom_tri" },
	[36] = { Vector( 32.155, -0.01, 0.95 ), Angle( 0, -90, 0 ), "freedom_tri" },

}

COMPONENT.Sections = {
	["auto_whelen_freedom"] = {
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_1" }, { 4, "_1" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_4" }, { 10, "_3" },
			{ 11, "_4" }, { 12, "_3" }, 
			{ 13, "_1" }, { 14, "_1" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_1" }, { 18, "_1" },
			{ 19, "_1" }, { 20, "_1" },
			{ 21, "_1" }, { 22, "_1" },
			{ 23, "_4" }, { 24, "_3" },
			{ 25, "_4" }, { 26, "_3" }, 
			{ 27, "_1" }, { 28, "_1" },

			{ 29, "_5" }, { 30, "_5" },
			{ 31, "_5" }, { 32, "_5" },
			{ 33, "_5" }, { 34, "_5" },
			{ 35, "_5" }, { 36, "_5" },
		},
	},
	["auto_whelen_freedom_front_inner"] = {
		{
			{ 1, "_2" }, { 2, "_2" },
			{ 15, "_2" }, { 16, "_2" }
		},

		{
			{ 1, "_2" }, { 15, "_2" },
		},
		{
			{ 2, "_2" }, { 16, "_2" }
		},
	},
	["auto_whelen_freedom_front_outer"] = {
		{
			{ 3, "_1" }, { 4, "_1" },
			{ 17, "_1" }, { 18, "_1" }
		},

		{
			{ 3, "_1" }, { 17, "_1" }
		},
		{
			{ 4, "_1" }, { 18, "_1" }
		},
	},
	["auto_whelen_freedom_front_corner"] = {
		{
			{ 5, "_1" }, { 6, "_1" },
			{ 19, "_1" }, { 20, "_1" }
		},

		{
			{ 5, "_1" }, { 19, "_1" }
		},
		{
			{ 6, "_1" }, { 20, "_1" }
		},
	},
	["auto_whelen_freedom_rear_corner"] = {
		{
			{ 7, "_1" }, { 8, "_1" },
			{ 21, "_1" }, { 22, "_1" }
		},

		{
			{ 7, "_1" }, { 21, "_1" }
		},
		{
			{ 8, "_1" }, { 22, "_1" }
		},
	},
	["auto_whelen_freedom_rear_inner"] = {
		{
			{ 9, "_3" }, { 10, "_3" },
			{ 11, "_4" }, { 12, "_1" }, 
			{ 13, "_1" }, { 14, "_1" },

			{ 23, "_3" }, { 24, "_3" },
			{ 25, "_4" }, { 26, "_1" }, 
			{ 27, "_1" }, { 28, "_1" },
		},

		-- RESPND (2-3)
		{
			{ 9, "_3" }, { 12, "_1" }, { 13, "_1" },
			{ 23, "_3" }, { 26, "_1" }, { 27, "_1" },
		},
		{
			{ 10, "_3" }, { 11, "_4" }, { 14, "_1" },
			{ 24, "_3" }, { 25, "_4" }, { 28, "_1" },
		},
		-- ONSCNE (4-13) --
		{
			{ 13, "_1" },

			{ 27, "_1" },
		},
		{
			{ 11, "_4" },
			{ 13, "_1" },

			{ 25, "_4" },
			{ 27, "_1" },
		},
		
		{
			{ 9, "_3" }, 
			{ 11, "_4" },
			{ 13, "_1" },

			{ 23, "_3" },
			{ 25, "_4" },
			{ 27, "_1" },
		},
		{
			{ 9, "_3" },
			{ 11, "_4" },

			{ 23, "_3" },
			{ 25, "_4" },
		},
		{
			{ 9, "_3" },

			{ 23, "_3" }
		},
		--
		{
			{ 14, "_1" },

			{ 28, "_1" },
		},
		{
			{ 12, "_1" }, 
			{ 14, "_1" },

			{ 26, "_1" }, 
			{ 28, "_1" },
		},
		{
			{ 10, "_3" },
			{ 12, "_1" }, 
			{ 14, "_1" },

			{ 24, "_3" },
			{ 26, "_1" }, 
			{ 28, "_1" },
		},
		{
			{ 10, "_3" },
			{ 12, "_1" }, 

			{ 24, "_3" },
			{ 26, "_1" }, 
		},
		{
			{ 10, "_3" },

			{ 24, "_3" },
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_freedom"] = {
        ["debug"] = { 1 },
	},
	["auto_whelen_freedom_front_inner"] = {
        ["debug"] = { 1 },

        ["onscne"] = {
        	2,2,2,2,
        	2,2,2,0,2,0,2,0,2,2,2,
        	0,0,0,0,
        	3,3,3,3,
        	3,3,3,0,3,0,3,0,3,3,3,
        	0,0,0,0,
        },
        ["respnd"] = { 2,0,2,0,2,2,3,0,3,0,3,3 },
	},
	["auto_whelen_freedom_front_outer"] = {
        ["debug"] = { 1 },

        ["onscne"] = {
        	0,2,2,2,
        	2,2,2,0,2,0,2,0,2,2,2,
        	2,0,0,0,
        	0,3,3,3,
        	3,3,3,0,3,0,3,0,3,3,3,
        	3,0,0,0,
        },
        ["respnd"] = { 2,0,2,0,2,0,2,3,0,3,0,3,0,3 },
	},
	["auto_whelen_freedom_front_corner"] = {
        ["debug"] = { 1 },

        ["onscne"] = {
        	0,0,2,2,
        	2,2,2,0,2,0,2,0,2,2,2,
        	2,2,0,0,
        	0,0,3,3,
        	3,3,3,0,3,0,3,0,3,3,3,
        	3,3,0,0,
        },
        ["respnd"] = { 2,0,2,2,2,3,0,3,3,3 },
	},
	["auto_whelen_freedom_rear_corner"] = {
        ["debug"] = { 1 },

        ["onscne"] = {
        	0,0,0,2,
        	2,2,2,0,2,0,2,0,2,2,2,
        	2,2,2,0,
        	0,0,0,3,
        	3,3,3,0,3,0,3,0,3,3,3,
        	3,3,3,0,
        },
        ["respnd"] = { 2,0,2,2,2,3,0,3,3,3 },
	},
	["auto_whelen_freedom_rear_inner"] = {
        ["debug"] = { 1 },

        ["onscne"] = { 
        	4,5,6,6,
        	6,6,6,0,6,0,6,0,6,6,6,
        	7,8,0,0,
        	9,10,11,11,
        	11,11,11,0,11,0,11,0,11,11,11,
        	12,13,0,0, 
    	},
        ["respnd"] = { 2,0,2,0,2,0,2,3,0,3,0,3,0,3 },
	}
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_freedom_front_inner"] = "onscne",
				["auto_whelen_freedom_front_outer"] = "onscne",
				["auto_whelen_freedom_front_corner"] = "onscne",
				["auto_whelen_freedom_rear_corner"] = "onscne",
				["auto_whelen_freedom_rear_inner"] = "onscne",
			},
			M3 = {
				["auto_whelen_freedom_front_inner"] = "respnd",
				["auto_whelen_freedom_front_outer"] = "respnd",
				["auto_whelen_freedom_front_corner"] = "respnd",
				["auto_whelen_freedom_rear_corner"] = "respnd",
				["auto_whelen_freedom_rear_inner"] = "respnd",
			},
		},
	Auxiliary = {},
	Illumination = {
		L = {
			{ 33, W }, { 35, W }
		},
		R = {
			{ 34, W }, { 36, W }
		},
		T = {
			{ 29, W }, { 30, W }, { 31, W }, { 32, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )