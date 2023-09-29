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
	[1] = "RED",
	[2] = "BLUE",
	[3] = "S_WHITE"
}

COMPONENT.SubMaterials = {[2] = "rh&lr/nypepd/props/heliobe_glass"}

COMPONENT.Meta = {
	auto_heliobe_f_strobe = {
		AngleOffset = -90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_heliobe_r_strobe = {
		AngleOffset = 90,
		W = 7.9,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_heliobe_halogen = {
		AngleOffset = -90,
		W = 4,
		H = 3.2,
		Sprite = "sprites/emv/square_src",
		WMult = 1,
		Scale = 0.375,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 5.9, 9.2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_f_strobe" },
	[2] = { Vector( 5.9, -9.2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_f_strobe" },
	[3] = { Vector( 5.9, 18.4, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_f_strobe" },
	[4] = { Vector( 5.9, -18.4, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_f_strobe" },

	[5] = { Vector( -2.35, 27, 5 ), Angle( 0, 0, 0 ), "auto_heliobe_f_strobe" },
	[6] = { Vector( -2.35, -27, 5 ), Angle( 0, 180, 0 ), "auto_heliobe_f_strobe" },

	[7] = { Vector( -5.9, 18.4, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_r_strobe" },
	[8] = { Vector( -5.9, -18.4, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_r_strobe" },
	[9] = { Vector( -5.9, 9.2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_r_strobe" },
	[10] = { Vector( -5.9, -9.2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_r_strobe" },
	[11] = { Vector( -5.9, 0, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_r_strobe" },

	[12] = { Vector( 5.9, 2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_halogen" },
	[13] = { Vector( 5.9, -2, 5 ), Angle( 0, -90, 0 ), "auto_heliobe_halogen" },
	[14] = { Vector( 3.9, 25.1, 5 ), Angle( 0, -45, 0 ), "auto_heliobe_halogen" },
	[15] = { Vector( 3.9, -25.1, 5 ), Angle( 0, -135, 0 ), "auto_heliobe_halogen" },

}

COMPONENT.Sections = {
	["auto_heliobe"] = {
		{
			{ 1, "_1" }, { 2, "_1" },
			{ 3, "_1" }, { 4, "_1" },
			{ 5, "_1" }, { 6, "_1" },
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_2" }, { 10, "_2" },
			{ 11, "_1" },
			{ 12, "_3" }, { 13, "_3" },
			{ 14, "_3" }, { 15, "_3" },
		}
	},
	["auto_heliobe_front_main"] = {
		{
			{ 1, "_1" }, { 2, "_1" },
			{ 3, "_1" }, { 4, "_1" },
		},
		{
			{ 1, "_1" }, { 2, "_1" }
		},
		{
			{ 3, "_1" }, { 4, "_1" }
		}
	},
	["auto_heliobe_corners"] = {
		{
			{ 5, "_1" }, { 6, "_1" }
		},
		{
			{ 5, "_1" }
		},
		{
			{ 6, "_1" }
		}
	},
	["auto_heliobe_rear_main"] = {
		{
			{ 7, "_1" }, { 8, "_1" },
			{ 9, "_2" }, { 10, "_2" },
			{ 11, "_1" }
		},
		{
			{ 7, "_1" }, { 8, "_1" },
			{ 11, "_1" }
		},
		{
			{ 9, "_2" }, { 10, "_2" }
		}
	},
	["auto_heliobe_halogens"] = {
		{
			{ 12, "_3" }, { 13, "_3" },
			{ 14, "_3" }, { 15, "_3" },
		},

		-- (2-5)
		{ { 12, "_3", 0.25 }, { 15, "_3", 0.25 } },
		{ { 12, "_3", 0.5 }, { 15, "_3", 0.5 } },
		{ { 12, "_3", 0.75 }, { 15, "_3", 0.75 } },
		{ { 12, "_3", 1 }, { 15, "_3", 1 } },

		-- (6-9)
		{ { 13, "_3", 0.25 }, { 14, "_3", 0.25 } },
		{ { 13, "_3", 0.5 }, { 14, "_3", 0.5 } },
		{ { 13, "_3", 0.75 }, { 14, "_3", 0.75 } },
		{ { 13, "_3", 1 }, { 14, "_3", 1 } },

		-- (10-13)
		{ { 12, "_3", 0.75 }, { 15, "_3", 0.75 },{ 13, "_3", 0.25 }, { 14, "_3", 0.25 } },
		{ { 12, "_3", 0.5 }, { 15, "_3", 0.5 }, { 13, "_3", 0.5 }, { 14, "_3", 0.5 } },
		{ { 12, "_3", 0.25 }, { 15, "_3", 0.25 }, { 13, "_3", 0.75 }, { 14, "_3", 0.75 } }
	},
	["auto_heliobe_traffic"] = {
		{
			{ 7, "_1" }, { 9, "_2" }, { 11, "_1" }, { 10, "_2" }, { 8, "_1" }
		},

		-- LEFT & RIGHT (2-7)
		{
			{ 7, "_1" }
		},
		{
			{ 7, "_1" }, { 9, "_2" }
		},
		{
			{ 9, "_2" }, { 11, "_1" }
		},
		{
			{ 11, "_1" }, { 10, "_2" }
		},
		{
			{ 10, "_2" }, { 8, "_1" }
		},
		{
			{ 8, "_1" }
		},

		-- DIVERGE (8-11)
		{
			{ 11, "_1" }
		},
		{
			{ 9, "_2" }, { 11, "_1" }, { 10, "_2" }
		},
		{
			{ 7, "_1" }, { 9, "_2" }, { 10, "_2" }, { 8, "_1" }
		},
		{
			{ 7, "_1" }, { 8, "_1" }
		},
	},
}

COMPONENT.Patterns = {
	["auto_heliobe"] = {
		["debug"] = { 1 },
	},
	["auto_heliobe_front_main"] = {
		["debug"] = { 1 },

		["scene"] = { 1 },
		["response"] = { 2,0,2,0,2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0,3,0,3,0 },
	},
	["auto_heliobe_corners"] = {
		["debug"] = { 1 },

		["scene"] = { 1 },
		["response"] = { 2,0,2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0,3,0 },
	},
	["auto_heliobe_rear_main"] = {
		["debug"] = { 1 },

		["scene"] = { 1 },
		["response"] = { 2,0,2,0,2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0,3,0,3,0 },
	},
	["auto_heliobe_halogens"] = {
		["debug"] = { 1 },

		["scene"] = { 1 },
		["response"] = { 
			12,11,10, 5,4,3,2,3,4,5, 10,11,12, 9,8,7,6,7,8,9,
		},
	},
	["auto_heliobe_traffic"] = {
		["debug"] = { 1 },

		["left"] = { 7,0,7,0,7,0,7,0,7,0,7,0,6,0,6,0,6,0,6,0,6,0,6,0,5,0,5,0,5,0,5,0,5,0,5,0,4,0,4,0,4,0,4,0,4,0,4,0,3,0,3,0,3,0,3,0,3,0,3,0,2,0,2,0,2,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["right"] = { 2,0,2,0,2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0,3,0,3,0,4,0,4,0,4,0,4,0,4,0,4,0,5,0,5,0,5,0,5,0,5,0,5,0,6,0,6,0,6,0,6,0,6,0,6,0,7,0,7,0,7,0,7,0,7,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["diverge"] = { 8,0,8,0,8,0,8,0,8,0,8,0,9,0,9,0,9,0,9,0,9,0,9,0,10,0,10,0,10,0,10,0,10,0,10,0,11,0,11,0,11,0,11,0,11,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0 },
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_heliobe_traffic"] = {
		7, 8, 9, 10, 11
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_heliobe"] = "debug",
			},
			M3 = {
				["auto_heliobe_front_main"] = "response",
				["auto_heliobe_corners"] = "response",
				["auto_heliobe_rear_main"] = "response",
				["auto_heliobe_halogens"] = "response",
			}
		},
	Auxiliary = {
			L = {
				["auto_heliobe_traffic"] = "left"
			},
			R = {
				["auto_heliobe_traffic"] = "right"
			},
			D = {
				["auto_heliobe_traffic"] = "diverge"
			}
		},
	Illumination = {
		T = {
			{ 12, "S_WHITE" }, { 13, "S_WHITE" },
		},
		L = {
			{ 14, "S_WHITE" }, 
		},
		R = {
			{ 15, "S_WHITE" }, 
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )