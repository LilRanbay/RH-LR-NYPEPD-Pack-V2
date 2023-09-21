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

local name = "NYPEPD Whelen Liberty ii"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/whelen_liberty_ii_colored.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {
	{3,0}
}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
    [3] = "RED",
    [4] = "BLUE",
	[5] = "WHITE"
}

COMPONENT.SubMaterials = {
	[4] = "rh&lr/NYPEPD/libertyii_glass",
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8.5,
		H = 8.5,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 7.4,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_6x2",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 2.65, -.5, 0 ),
			Vector( 1.55, -.5, 0 ),
			Vector( 0.5, -.5, 0 ),
			Vector( -2.65, -.5, 0 ),
			Vector( -1.55, -.5, 0 ),
			Vector( -0.5, -.5, 0 ),
			
			Vector( 2.65, .5, 0 ),
			Vector( 1.55, .5, 0 ),
			Vector( 0.5, .5, 0 ),
			Vector( -2.65, .5, 0 ),
			Vector( -1.55, .5, 0 ),
			Vector( -0.5, .5, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 3.2,
		H = 3.2,
		Sprite = "sprites/emv/emv_whelen2_alley",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 0, -.85, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, .85, 0 ),
		}
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 13.3,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 13.3,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 9,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( -4.2, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( 4.2, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	
	[3] = { Vector( -18.45, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( 18.45, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[5] = { Vector( -26, 3.53, 0.4 ), Angle( 0, 47.18, 0 ), "liberty_f_ang" },
	[6] = { Vector( 26, 3.53, 0.4 ), Angle( 0, -47.18, 0  ), "liberty_f_ang" },

	[7] = { Vector( -26, -3.53, 0.4 ), Angle( 0, -47.18, 0 ), "liberty_r_ang" },
	[8] = { Vector( 26, -3.53, 0.4 ), Angle( 0, 47.18, 0 ), "liberty_r_ang" },

	[9] = { Vector( -18.25, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( 18.25, -6.1, 0.35  ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[11] = { Vector( -11.1, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red
	[12] = { Vector( 11.1, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red

	[13] = { Vector( -4.2, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( 4.2, -6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[15] = { Vector( -11.35, 6.2, 0.45 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( 11.35, 6.2, 0.39 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -28.7, 0, 0.39 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 28.7, 0, 0.39 ), Angle( 0, -90, 0 ), "liberty_alley" },

}

local DVI_S = 5.5
local DVI_F = 0.35

COMPONENT.Sections = {
	["auto_whelen_liberty_ii"] = {
		{
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_3" }, { 8, "_4" },
			{ 9, "_3" }, { 10, "_4" },
			{ 11, "_3" }, { 12, "_4" },
			{ 13, "_3" }, { 14, "_4" },
			{ 15, "_5" }, { 16, "_5" },
			{ 17, "_5" }, { 18, "_5" }
		},

		-- PARK (2) --
		{
			{ 1, "_1", { DVI_S, DVI_F, 0 } }, { 2, "_2", { -DVI_S, DVI_F, 0 } },
			{ 3, "_1", { DVI_S, DVI_F, 0 } }, { 4, "_2", { -DVI_S, DVI_F, 0 } },
			{ 5, "_1", { DVI_S, DVI_F, 0 } }, { 6, "_2", { -DVI_S, DVI_F, 0 } },
			{ 7, "_3", { DVI_S, DVI_F, 0 } }, { 8, "_4", { -DVI_S, DVI_F, 0 } },
			{ 9, "_3", { DVI_S, DVI_F, 0 } }, { 10, "_4", { -DVI_S, DVI_F, 0 } },
			{ 11, "_3", { DVI_S, DVI_F, 0 } }, { 12, "_4", { -DVI_S, DVI_F, 0 } },
			{ 13, "_3", { DVI_S, DVI_F, 0 } }, { 14, "_4", { -DVI_S, DVI_F, 0 } }
		},
	},
	["auto_whelen_liberty_ii_front_inner"] = {
		{
			{ 1, "_1" }, { 2, "_2" }
		},
		{
			{ 1, "_1" }
		},
		{
			{ 2, "_2" }
		},
	},
	["auto_whelen_liberty_ii_front_outer"] = {
		{
			{ 3, "_1" }, { 4, "_2" },
		},
		{
			{ 3, "_1" }
		},
		{
			{ 4, "_2" }
		},
	},
	["auto_whelen_liberty_ii_front_corner"] = {
		{
			{ 5, "_1" }, { 6, "_2" },
		},
		{
			{ 5, "_1" }
		},
		{
			{ 6, "_2" }
		},
	},
	["auto_whelen_liberty_ii_rear_corner"] = {
		{
			{ 7, "_3" }, { 8, "_4" },
		},
		{
			{ 7, "_3" }
		},
		{
			{ 8, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_outer"] = {
		{
			{ 9, "_3" }, { 10, "_4" },
		},
		{
			{ 9, "_3" }
		},
		{
			{ 10, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_middle"] = {
		{
			{ 11, "_3" }, { 12, "_4" },
		},
		{
			{ 11, "_3" }
		},
		{
			{ 12, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_inner"] = {
		{
			{ 13, "_3" }, { 14, "_4" },
		},
		{
			{ 13, "_3" }
		},
		{
			{ 14, "_4" }
		},
	},
	["auto_whelen_liberty_ii_takedowns"] = {
		{
			{ 15, "_5" }, { 16, "_5" },
			{ 17, "_5" }, { 18, "_5" }
		},
		{
			{ 15, "_5" }, { 17, "_5" }
		},
		{
			{ 16, "_5" }, { 18, "_5" }
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_liberty_ii"] = {
		["debug"] = { 1 },

		["park"] = { 2 },
	},
	["auto_whelen_liberty_ii_front_inner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,0,2,0,2,0,2,2,2,
			3,0,3,0,3,0,3,3,3,
		},
	},
	["auto_whelen_liberty_ii_front_outer"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,0,2,0,2,0,2,2,2,2,
			3,0,3,0,3,0,3,3,3,3 
		},
	},
	["auto_whelen_liberty_ii_front_corner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,3,0,3,0,3,0,3,3,3,
			3,2,0,2,0,2,0,2,2,2
		},
	},
	["auto_whelen_liberty_ii_rear_corner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			0,3,3,3,2,0,2,0,2,
			0,2,2,2,3,0,3,0,3,
		},
	},
	["auto_whelen_liberty_ii_rear_outer"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,3,3,2,0,2,0,2,0,
			2,2,2,3,0,3,0,3,0, 
		},
	},
	["auto_whelen_liberty_ii_rear_middle"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,2,0,2,0,2,0,2,2,
			2,3,0,3,0,3,0,3,3
		},
	},
	["auto_whelen_liberty_ii_rear_inner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,3,2,0,2,0,2,0,2,
			2,2,3,0,3,0,3,0,3,
		},
	},
	["auto_whelen_liberty_ii_takedowns"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 2,2,2,2,0,3,3,3,3,0 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_liberty_ii"] = "park",
				["auto_whelen_liberty_ii_front_inner"] = "park",
				["auto_whelen_liberty_ii_front_outer"] = "park",
				["auto_whelen_liberty_ii_front_corner"] = "park",
				["auto_whelen_liberty_ii_rear_corner"] = "park",
				["auto_whelen_liberty_ii_rear_outer"] = "park",
				["auto_whelen_liberty_ii_rear_middle"] = "park",
				["auto_whelen_liberty_ii_rear_inner"] = "park",
				["auto_whelen_liberty_ii_takedowns"] = "park"
			},
			M3 = {
				["auto_whelen_liberty_ii_front_inner"] = "code3",
				["auto_whelen_liberty_ii_front_outer"] = "code3",
				["auto_whelen_liberty_ii_front_corner"] = "code3",
				["auto_whelen_liberty_ii_rear_corner"] = "code3",
				["auto_whelen_liberty_ii_rear_outer"] = "code3",
				["auto_whelen_liberty_ii_rear_middle"] = "code3",
				["auto_whelen_liberty_ii_rear_inner"] = "code3",
				["auto_whelen_liberty_ii_takedowns"] = "code3"
			}
		},
	Auxiliary = {},
	Illumination = {
		L = {
			{ 17, W }
		},
		R = {
			{ 18, W }
		},
		T = {
			{ 15, W }, { 16, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD Whelen Liberty Large ii"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD Whelen Liberty ii"
COMPONENT.Model = "models/supermighty/whelen_liberty_ii_large_colored.mdl"
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = { {2,0} }

COMPONENT.SubMaterials = {
	[4] = "rh&lr/NYPEPD/libertyii_glass",
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8.5,
		H = 8.5,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 7.4,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_6x2",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 2.65, -.5, 0 ),
			Vector( 1.55, -.5, 0 ),
			Vector( 0.5, -.5, 0 ),
			Vector( -2.65, -.5, 0 ),
			Vector( -1.55, -.5, 0 ),
			Vector( -0.5, -.5, 0 ),
			
			Vector( 2.65, .5, 0 ),
			Vector( 1.55, .5, 0 ),
			Vector( 0.5, .5, 0 ),
			Vector( -2.65, .5, 0 ),
			Vector( -1.55, .5, 0 ),
			Vector( -0.5, .5, 0 ),
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 3.2,
		H = 3.2,
		Sprite = "sprites/emv/emv_whelen2_alley",
		WMult = 1,
		Scale = .7,
		EmitArray = {
			Vector( 0, -.85, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, .85, 0 ),
		}
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 12.5,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 12.5,
		H = 15,
		Sprite = "sprites_apac/emv/whelen_lin6_corner",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( -0.05, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1, 0, 0 ),
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 9,
		H = 9,
		Sprite = "sprites_apac/emv/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 2.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( .45, 0, 0 ),
			Vector( -2.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
			Vector( -.45, 0, 0 ),
		}
	},
	liberty_f_small = {
		AngleOffset = -90,
		W = 2.3,
		H = 2.1,
		Sprite = "sprites/emv/square_src",
		Scale = .4,
		WMult = .25,
		EmitArray = {
			Vector( 0.75, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -0.75, 0, 0 ),
		}
	},
	liberty_r_small = {
		AngleOffset = 90,
		W = 2.3,
		H = 2.1,
		Sprite = "sprites/emv/square_src",
		Scale = .4,
		WMult = .25,
		EmitArray = {
			Vector( 0.75, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -0.75, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -7.3, 6.35, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( 7.3, 6.35, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	
	[3] = { Vector( -21.375, 6.35, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( 21.375, 6.35, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[5] = { Vector( -29, 3.78, 0.4 ), Angle( 0, 45.18, 0 ), "liberty_f_ang" },
	[6] = { Vector( 29, 3.78, 0.4 ), Angle( 0, -45.18, 0  ), "liberty_f_ang" },

	[7] = { Vector( -29, -3.78, 0.4 ), Angle( 0, -45.18, 0 ), "liberty_r_ang" },
	[8] = { Vector( 29, -3.78, 0.4 ), Angle( 0, 45.18, 0 ), "liberty_r_ang" },

	[9] = { Vector( -21.375, -6.35, 0.4 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( 21.375, -6.35, 0.4  ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[11] = { Vector( -14.32, -6.35, 0.4 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red
	[12] = { Vector( 14.32, -6.35, 0.4 ), Angle( 0, 0, 0 ), "liberty_r_main" }, -- red

	[13] = { Vector( -7.25, -6.35, 0.4 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( 7.25, -6.35, 0.4 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[15] = { Vector( -14.32, 6.35, 0.45 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( 14.32, 6.35, 0.45 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -31.65, 0, 0.39 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 31.65, 0, 0.39 ), Angle( 0, -90, 0 ), "liberty_alley" },
	
	[19] = { Vector( -1.2, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_small" },
	[20] = { Vector( 1.2, 6.1, 0.35 ), Angle( 0, 0, 0 ), "liberty_f_small" },
	
	[21] = { Vector( -1.2, -6.3, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_small" },
	[22] = { Vector( 1.2, -6.3, 0.35 ), Angle( 0, 0, 0 ), "liberty_r_small" },

}

COMPONENT.Sections = {
	["auto_whelen_liberty_ii"] = {
		{
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_3" }, { 8, "_4" },
			{ 9, "_3" }, { 10, "_4" },
			{ 11, "_3" }, { 12, "_4" },
			{ 13, "_3" }, { 14, "_4" },
			{ 15, "_5" }, { 16, "_5" },
			{ 17, "_5" }, { 18, "_5" },

			{ 19, "_1" }, { 20, "_2" },
			{ 21, "_3" }, { 22, "_4" },
		},

		-- PARK (2) --
		{
			{ 1, "_1", { DVI_S, DVI_F, 0 } }, { 2, "_2", { -DVI_S, DVI_F, 0 } },
			{ 3, "_1", { DVI_S, DVI_F, 0 } }, { 4, "_2", { -DVI_S, DVI_F, 0 } },
			{ 5, "_1", { DVI_S, DVI_F, 0 } }, { 6, "_2", { -DVI_S, DVI_F, 0 } },
			{ 7, "_3", { DVI_S, DVI_F, 0 } }, { 8, "_4", { -DVI_S, DVI_F, 0 } },
			{ 9, "_3", { DVI_S, DVI_F, 0 } }, { 10, "_4", { -DVI_S, DVI_F, 0 } },
			{ 11, "_3", { DVI_S, DVI_F, 0 } }, { 12, "_4", { -DVI_S, DVI_F, 0 } },
			{ 13, "_3", { DVI_S, DVI_F, 0 } }, { 14, "_4", { -DVI_S, DVI_F, 0 } },

			{ 19, "_1", { DVI_S, DVI_F, 0 } }, { 20, "_2", { -DVI_S, DVI_F, 0 } },
			{ 21, "_3", { DVI_S, DVI_F, 0 } }, { 22, "_4", { -DVI_S, DVI_F, 0 } }
		},
	},
	["auto_whelen_liberty_ii_front_inside"] = {
		{
			{ 19, "_1" }, { 20, "_2" },
		},
		{
			{ 19, "_1" }
		},
		{
			{ 20, "_2" }
		},
	},
	["auto_whelen_liberty_ii_front_inner"] = {
		{
			{ 1, "_1" }, { 2, "_2" }
		},
		{
			{ 1, "_1" }
		},
		{
			{ 2, "_2" }
		},
	},
	["auto_whelen_liberty_ii_front_outer"] = {
		{
			{ 3, "_1" }, { 4, "_2" },
		},
		{
			{ 3, "_1" }
		},
		{
			{ 4, "_2" }
		},
	},
	["auto_whelen_liberty_ii_front_corner"] = {
		{
			{ 5, "_1" }, { 6, "_2" },
		},
		{
			{ 5, "_1" }
		},
		{
			{ 6, "_2" }
		},
	},
	["auto_whelen_liberty_ii_rear_corner"] = {
		{
			{ 7, "_3" }, { 8, "_4" },
		},
		{
			{ 7, "_3" }
		},
		{
			{ 8, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_outer"] = {
		{
			{ 9, "_3" }, { 10, "_4" },
		},
		{
			{ 9, "_3" }
		},
		{
			{ 10, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_middle"] = {
		{
			{ 11, "_3" }, { 12, "_4" },
		},
		{
			{ 11, "_3" }
		},
		{
			{ 12, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_inner"] = {
		{
			{ 13, "_3" }, { 14, "_4" },
		},
		{
			{ 13, "_3" }
		},
		{
			{ 14, "_4" }
		},
	},
	["auto_whelen_liberty_ii_rear_inside"] = {
		{
			{ 21, "_3" }, { 22, "_4" },
		},
		{
			{ 21, "_3" }
		},
		{
			{ 22, "_4" }
		},
	},
	["auto_whelen_liberty_ii_takedowns"] = {
		{
			{ 15, "_5" }, { 16, "_5" },
			{ 17, "_5" }, { 18, "_5" }
		},
		{
			{ 15, "_5" }, { 17, "_5" }
		},
		{
			{ 16, "_5" }, { 18, "_5" }
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_liberty_ii"] = {
		["debug"] = { 1 },

		["park"] = { 2 },
	},
	["auto_whelen_liberty_ii_front_inside"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,0,3,0,3,0,3,0,3,0,
			2,0,2,0,2,0,2,0,2,0
		},
	},
	["auto_whelen_liberty_ii_front_inner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,0,2,0,2,0,2,2,2,
			3,0,3,0,3,0,3,3,3,
		},
	},
	["auto_whelen_liberty_ii_front_outer"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,0,2,0,2,0,2,2,2,2,
			3,0,3,0,3,0,3,3,3,3 
		},
	},
	["auto_whelen_liberty_ii_front_corner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			2,3,0,3,0,3,0,3,3,3,
			3,2,0,2,0,2,0,2,2,2
		},
	},
	["auto_whelen_liberty_ii_rear_corner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			0,3,3,3,2,0,2,0,2,
			0,2,2,2,3,0,3,0,3,
		},
	},
	["auto_whelen_liberty_ii_rear_outer"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,3,3,2,0,2,0,2,0,
			2,2,2,3,0,3,0,3,0, 
		},
	},
	["auto_whelen_liberty_ii_rear_middle"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,2,0,2,0,2,0,2,2,
			2,3,0,3,0,3,0,3,3
		},
	},
	["auto_whelen_liberty_ii_rear_inner"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,3,2,0,2,0,2,0,2,
			2,2,3,0,3,0,3,0,3,
		},
	},
	["auto_whelen_liberty_ii_rear_inside"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 
			3,2,0,2,0,2,0,2,2,
			2,3,0,3,0,3,0,3,3,
		},
	},
	["auto_whelen_liberty_ii_takedowns"] = {
		["debug"] = { 1 },
		
		["park"] = { 0 },
		["code3"] = { 2,2,2,2,0,3,3,3,3,0 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_liberty_ii"] = "park",
				["auto_whelen_liberty_ii_front_inside"] = "park",
				["auto_whelen_liberty_ii_front_inner"] = "park",
				["auto_whelen_liberty_ii_front_outer"] = "park",
				["auto_whelen_liberty_ii_front_corner"] = "park",
				["auto_whelen_liberty_ii_rear_corner"] = "park",
				["auto_whelen_liberty_ii_rear_outer"] = "park",
				["auto_whelen_liberty_ii_rear_middle"] = "park",
				["auto_whelen_liberty_ii_rear_inner"] = "park",
				["auto_whelen_liberty_ii_rear_inside"] = "park",
				["auto_whelen_liberty_ii_takedowns"] = "park"
			},
			M3 = {
				["auto_whelen_liberty_ii_front_inside"] = "code3",
				["auto_whelen_liberty_ii_front_inner"] = "code3",
				["auto_whelen_liberty_ii_front_outer"] = "code3",
				["auto_whelen_liberty_ii_front_corner"] = "code3",
				["auto_whelen_liberty_ii_rear_corner"] = "code3",
				["auto_whelen_liberty_ii_rear_outer"] = "code3",
				["auto_whelen_liberty_ii_rear_middle"] = "code3",
				["auto_whelen_liberty_ii_rear_inner"] = "code3",
				["auto_whelen_liberty_ii_rear_inside"] = "code3",
				["auto_whelen_liberty_ii_takedowns"] = "code3"
			}
		},
	Auxiliary = {},
	Illumination = {
		L = {
			{ 17, W }
		},
		R = {
			{ 18, W }
		},
		T = {
			{ 15, W }, { 16, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )