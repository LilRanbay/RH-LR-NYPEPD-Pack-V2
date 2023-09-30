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
	[1] = "RED",
	[2] = "WHITE",
	[3] = "BLUE",
	[4] = "AMBER",
	--
	[5] = "WHITE"
}

COMPONENT.SubMaterials = {
	["2"] = "rh&lr/nypepd/props/freedom_glass",
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
			{ 3, "_2" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_4" }, { 10, "_4" },
			{ 11, "_4" }, { 12, "_4" }, 
			{ 13, "_4" }, { 14, "_4" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" }, { 18, "_2" },
			{ 19, "_1" }, { 20, "_1" },
			{ 21, "_1" }, { 22, "_1" },
			{ 23, "_1" }, { 24, "_1" },
			{ 25, "_3" }, { 26, "_3" }, 
			{ 27, "_1" }, { 28, "_1" },

			{ 29, "_5" }, { 30, "_5" },
			{ 31, "_5" }, { 32, "_5" },
			{ 33, "_5" }, { 34, "_5" },
			{ 35, "_5" }, { 36, "_5" },
		},

		-- SCENE (2-?)
		--[[
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" }, { 18, "_2" },
			{ 19, "_1" }, { 20, "_1" },
			{ 21, "_1" }, { 22, "_1" },
			{ 23, "_1" }, { 24, "_1" },
			{ 25, "_3" }, { 26, "_3" }, 
			{ 27, "_1" }, { 28, "_1" },
		},
		]]
		{
			{ 5, "_1", 0.5 },
			{ 7, "_1", 0.5 },


			{ 19, "_1", 0.5 },
			{ 21, "_1", 0.5 },
			{ 25, "_3", 0.5 },
		},
		{
			{ 5, "_1" },
			{ 7, "_1" },

			{ 19, "_1" },
			{ 21, "_1" },
			{ 25, "_3" }
		},
		{
			{ 3, "_2", 0.5 },

			{ 17, "_2", 0.5 },
		},
		{
			{ 3, "_2" },

			{ 17, "_2" },
		},
		{
			{ 1, "_1", 0.5 },
			{ 3, "_2" },

			{ 15, "_1", 0.5 },
			{ 17, "_2" },
		},
		{
			{ 1, "_1" },
			{ 3, "_2" },

			{ 15, "_1" },
			{ 17, "_2" },
		},
		{
			{ 1, "_1" }, { 2, "_1", 0.5 }, 
			{ 3, "_2" },

			{ 15, "_1" }, { 16, "_1", 0.5 }, 
			{ 17, "_2" },
		},
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" },
		},
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2" }, { 4, "_2", 0.5 },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" }, { 18, "_2", 0.5 },
		},
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2" }, { 4, "_2" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2" }, { 18, "_2" },
		},
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 3, "_2", 0.5 }, { 4, "_2" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 17, "_2", 0.5 }, { 18, "_2" },
		},
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 4, "_2" },

			{ 15, "_1" }, { 16, "_1" }, 
			{ 18, "_2" },
		},
		{
			{ 1, "_1", 0.5 }, { 2, "_1" }, 
			{ 4, "_2" },

			{ 15, "_1", 0.5 }, { 16, "_1" }, 
			{ 18, "_2" },
		},
		{
			{ 2, "_1" }, 
			{ 4, "_2" },

			{ 16, "_1" }, 
			{ 18, "_2" },
		},
		{
			{ 2, "_1", 0.5 }, 
			{ 4, "_2" },

			{ 16, "_1", 0.5 }, 
			{ 18, "_2" },
		},
		{
			{ 4, "_2" },

			{ 18, "_2" },
		},
		{
			{ 4, "_2", 0.5 },

			{ 18, "_2", 0.5 },
		},
		{
			{ 6, "_1", 0.5 },
			{ 8, "_1", 0.5 },

			{ 20, "_1", 0.5 },
			{ 22, "_1", 0.5 },
			{ 26, "_3", 0.5 },
		},
		{
			{ 6, "_1" },
			{ 8, "_1" },

			{ 20, "_1" },
			{ 22, "_1" },
			{ 26, "_3" },
		}
	},
	["auto_whelen_freedom_front_inner"] = {
		{
			{ 1, "_1" }, { 2, "_1" }, 
			{ 15, "_1" }, { 16, "_1" }
		},
		{
			{ 1, "_1" }, { 15, "_1" }
		},
		{
			{ 2, "_1" }, { 16, "_1" }
		}
	},
	["auto_whelen_freedom_front_outer"] = {
		{
			{ 3, "_2" }, { 4, "_2" },
			{ 17, "_2" }, { 18, "_2" }
		},
		{
			{ 3, "_2" }, { 17, "_2" }
		},
		{
			{ 4, "_2" }, { 18, "_2" }
		}
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
		}
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
		}
	},
	["auto_whelen_freedom_rear_top_main"] = {
		{
			{ 23, "_1" }, { 24, "_1" },
			{ 25, "_3" }, { 26, "_3" }, 
			{ 27, "_1" }, { 28, "_1" }
		},
		-- RESPONSE (2-3)
		{
			{ 23, "_1" }, 
			{ 26, "_3" }, 
			{ 27, "_1" },
		},
		{
			{ 24, "_1" },
			{ 25, "_3" }, 
			{ 28, "_1" }
		},

		-- SCENE (4-5)
		{
			{ 23, "_1", 0.5 },
			{ 27, "_1", 0.5 }
		},
		{
			{ 23, "_1" },
			{ 27, "_1" }
		},
		{
			{ 24, "_1", 0.5 },
			{ 28, "_1", 0.5 }
		},
		{
			{ 24, "_1" },
			{ 28, "_1" }
		}
	},
	["auto_whelen_freedom_traffic"] = {
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},

		-- LEFT & RIGHT (2-12)
		{
			{ 10, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }, { 13, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 14, "_4" }, { 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 11, "_4" }, { 9, "_4" }
		},
		{
			{ 9, "_4" }
		},

		-- DIVERGE (13-17)
		{
			{ 14, "_4" }, { 13, "_4" }
		},
		{
			{ 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 14, "_4" }, { 13, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 10, "_4" }, { 12, "_4" }, { 11, "_4" }, { 9, "_4" }
		},
		{
			{ 10, "_4" }, { 9, "_4" }
		}
	}
}

COMPONENT.Patterns = {
	["auto_whelen_freedom"] = {
    	["debug"] = { 1 },

    	["scene"] = { 
    		2,3,2,0,2,3,2,0,
    		4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
    		19,20,19,0,19,20,19,0,
    		18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,
    	}
	},
	["auto_whelen_freedom_front_inner"] = {
        ["debug"] = { 1 },

        ["scene"] = { 0 },
        ["response"] = { 2,0,2,0,3,0,3,0 }
	},
	["auto_whelen_freedom_front_outer"] = {
        ["debug"] = { 1 },

        ["scene"] = { 0 },
        ["response"] = { 2,2,2,2,0,3,3,3,3,0 }
	},
	["auto_whelen_freedom_front_corner"] = {
        ["debug"] = { 1 },

        ["scene"] = { 0 },
        ["response"] = { 2,0,2,0,2,2,2,3,0,3,0,3,3,3 }
	},
	["auto_whelen_freedom_rear_corner"] = {
        ["debug"] = { 1 },

        ["scene"] = { 0 },
        ["response"] = { 2,0,2,0,2,2,2,3,0,3,0,3,3,3 }
	},
	["auto_whelen_freedom_rear_top_main"] = {
        ["debug"] = { 1 },

        ["scene"] = { 
    		0,0,0,0,0,0,0,0,
    		4,5,5,5,5,4,0,6,7,7,7,7,6,0,0,
    		19,20,19,0,19,20,19,0,
    		6,7,7,7,7,6,0,4,5,5,5,5,4,0,0
    	},
        ["response"] = { 2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0 }
	},
	["auto_whelen_freedom_traffic"] = {
        ["debug"] = { 1 },

        ["left"] = { 12,12,12,12, 0,0, 12,11,10,9,8,7,6,5,4,3,2, 0,2,0,2, 0,0,0,0 },
        ["right"] = { 2,2,2,2, 0,0, 2,3,4,5,6,7,8,9,10,11,12, 0,12,0,12, 0,0,0,0 },
        ["diverge"] = { 13,13,13,13, 0,0, 13,13,14,14,15,15,16,16,17,17, 0,17,0,17, 0,0,0,0 }
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_whelen_freedom_traffic"] = {
		9, 10, 11, 12, 13, 14
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_freedom"] = "scene",
				["auto_whelen_freedom_rear_top_main"] = "scene"
			},
			M3 = {
				["auto_whelen_freedom_front_inner"] = "response",
				["auto_whelen_freedom_front_outer"] = "response",
				["auto_whelen_freedom_front_corner"] = "response",
				["auto_whelen_freedom_rear_corner"] = "response",
				["auto_whelen_freedom_rear_top_main"] = "response"
			}
		},
	Auxiliary = {
			L = {
				["auto_whelen_freedom_traffic"] = "left",
			},
			R = {
				["auto_whelen_freedom_traffic"] = "right",
			},
			D = {
				["auto_whelen_freedom_traffic"] = "diverge",
			}
		},
	Illumination = {
		L = {
			{ 33, "WHITE" }, { 35, "WHITE" }
		},
		R = {
			{ 34, "WHITE" }, { 36, "WHITE" }
		},
		T = {
			{ 29, "WHITE" }, { 30, "WHITE" }, { 31, "WHITE" }, { 32, "WHITE" }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )