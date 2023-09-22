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

local name = "NYPEPD Whelen Edge 9000"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/whelenedge.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {
	{1,1},
	{2,1}
}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "S_WHITE"
}
 
COMPONENT.SubMaterials = {[2] = "rh&lr/nypepd/props/edge_glass"}

COMPONENT.Meta = {
	auto_edge_strobe = {
		AngleOffset = -90,
		W = 8.5,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
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
	auto_edge_strobe_inner = {
		AngleOffset = -90,
		W = 6.5,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_edge_strobe_corner = {
		AngleOffset = -90,
		W = 9.6,
		H = 8.7,
		Sprite = "sprites/emv/tdm_halogen",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 4, 0, 0 ),
			Vector( 3.5, 0, 0 ),
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -4, 0, 0 ),
			Vector( -3.5, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	},
	auto_edge_halogen = {
		AngleOffset = -90,
		W = 7.5,
		H = 9.7,
		Sprite = "sprites/emv/arjent_takedown",
		WMult = 1,
		Scale = 0.425,
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
	},
	auto_edge_halogen_side = {
		AngleOffset = -90,
		W = 6.5,
		H = 7.75,
		Sprite = "sprites/emv/arjent_takedown",
		WMult = 1,
		Scale = 0.425,
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
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -5.44, 9.6, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_strobe" },
	[2] = { Vector( -5.44, -9.6, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_strobe" },

	[3] = { Vector( -5.44, 16.65, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen" },
	[4] = { Vector( -5.44, -16.65, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_halogen" },

	[5] = { Vector( -3.92, 25, 4.735 ), Angle( 0, 72.5, 0 ), "auto_edge_strobe_corner" },
	[6] = { Vector( -3.92, -25, 4.735 ), Angle( 0, 107.5, 0 ), "auto_edge_strobe_corner" },

	[7] = { Vector( 3.90, 25, 4.735 ), Angle( 0, -72.5, 0 ), "auto_edge_strobe_corner" },
	[8] = { Vector( 3.90, -25, 4.735 ), Angle( 0, -107.5, 0 ), "auto_edge_strobe_corner" },

	[9] = { Vector( 5.40, 16.65, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen" },
	[10] = { Vector( 5.40, -16.65, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_halogen" },

	[11] = { Vector( 5.40, 9.6, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_strobe" },
	[12] = { Vector( 5.40, -9.6, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_strobe" },

	[13] = { Vector( -0.01, 29.52, 4.735 ), Angle( 0, 0, 0 ), "auto_edge_halogen_side" },
	[14] = { Vector( -0.01, -29.52, 4.735 ), Angle( 0, 180, 0 ), "auto_edge_halogen_side" },
	
	[15] = { Vector( -5.44, 3, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_strobe_inner" },
	[16] = { Vector( -5.44, -3, 4.735 ), Angle( 0, 90, 0 ), "auto_edge_strobe_inner" },
	
	[17] = { Vector( 5.40, 3, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_strobe_inner" },
	[18] = { Vector( 5.40, -3, 4.735 ), Angle( 0, -90, 0 ), "auto_edge_strobe_inner" },
}

COMPONENT.Sections = {
	["auto_whelen_edge"] = {
		{
			{ 1, "_1"},{ 2, "_1"},
			{ 3, "_2"},{ 4, "_2"},
			{ 5, "_1"},{ 6, "_1"},
			{ 7, "_1"},{ 8, "_1"},
			{ 9, "_3"},{ 10, "_3"},
			{ 11, "_4"},{ 12, "_1"},
			{ 13, "_2"},{ 14, "_2"},
			{ 15, "_2"},{ 16, "_2"},
			{ 17, "_1"},{ 18, "_1"},
		}
	},
	["auto_whelen_edge_front_inner"] = {
		{
			{ 15, "_1"},{ 16, "_1"},
		},

		{
			{ 15, "_1"}
		},
		{
			{ 16, "_1"}
		}
	},
	["auto_whelen_edge_front_outer"] = {
		{
			{ 1, "_3"},{ 2, "_3"},
		},

		{
			{ 1, "_3"}
		},
		{
			{ 2, "_3"}
		}
	},
	["auto_whelen_edge_front_corner"] = {
		{
			{ 5, "_1"},{ 6, "_1"},
		},

		{
			{ 5, "_1"}
		},
		{
			{ 6, "_1"}
		}
	},
	["auto_whelen_edge_rear_corner"] = {
		{
			{ 7, "_1"},{ 8, "_1"},
		},

		{
			{ 7, "_1"}
		},
		{
			{ 8, "_1"}
		}
	},
	["auto_whelen_edge_rear_outer"] = {
		{
			{ 9, "_2"},{ 10, "_2"},
		},

		-- SCENE (2-5)
		{ { 9, "_2", 0.25 },{ 10, "_2", 0.25 } },
		{ { 9, "_2", 0.5 },{ 10, "_2", 0.5 } },
		{ { 9, "_2", 0.75 },{ 10, "_2", 0.75 } },
		{ { 9, "_2", 1 },{ 10, "_2", 1 } },

		-- RESPONSE (6-?)
		-- 6-8
		{ { 9, "_2", 0.33 } },
		{ { 9, "_2", 0.66 } },
		{ { 9, "_2", 1 } },

		-- 9-11
		{ { 10, "_2", 0.33 } },
		{ { 10, "_2", 0.66 } },
		{ { 10, "_2", 1 } },

		-- 12-14
		{ { 9, "_2", 0.66 },{ 10, "_2", 0.33 } },
		{ { 9, "_2", 0.33 },{ 10, "_2", 0.66 } },
		{ { 10, "_2", 1 } },

		-- 15-17
		{ { 10, "_2", 1 } },
		{ { 9, "_2", 0.33 },{ 10, "_2", 0.66 } },
		{ { 9, "_2", 0.66 },{ 10, "_2", 0.33 } },
	},
	["auto_whelen_edge_rear_middle"] = {
		{
			{ 11, "_1"},{ 12, "_1"},
		},

		{
			{ 11, "_1"}
		},
		{
			{ 12, "_1"}
		}
	},
	["auto_whelen_edge_rear_inner"] = {
		{
			{ 17, "_1"},{ 18, "_1"},
		},

		{
			{ 17, "_1"}
		},
		{
			{ 18, "_1"}
		}
	},
}

COMPONENT.Patterns = {
	["auto_whelen_edge"] = {
		["debug"] = { 1 },
	},
	["auto_whelen_edge_front_inner"] = {
		["debug"] = { 1 },

		["scene"] = { 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["response"] = { 2,0,2,0,0,3,0,3,0,0 },
	},
	["auto_whelen_edge_front_outer"] = {
		["debug"] = { 1 },

		["scene"] = { 0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0 },
		["response"] = { 2,0,0,0,3,0,0,0 },
	},
	["auto_whelen_edge_front_corner"] = {
		["debug"] = { 1 },

		["scene"] = { 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["response"] = { 3,0,3,0,0,0,2,0,2,0,0,0 },
	},
	["auto_whelen_edge_rear_corner"] = {
		["debug"] = { 1 },

		["scene"] = { 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["response"] = { 3,0,3,0,0,0,2,0,2,0,0,0 },
	},
	["auto_whelen_edge_rear_outer"] = {
		["debug"] = { 1 },

		["scene"] = { 0,0,0,0,0,0,0,0,2,3,4,5,4,3,2,0 },
		["response"] = { 6,7,8,12,13,14,10,9,10,15,16,17 },
	},
	["auto_whelen_edge_rear_middle"] = {
		["debug"] = { 1 },

		["scene"] = { 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0 },
		["response"] = { 3,0,3,0,0,0,2,0,2,0,0,0 },
	},
	["auto_whelen_edge_rear_inner"] = {
		["debug"] = { 1 },

		["scene"] = { 0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0 },
		["response"] = { 0,0,2,0,0,3,0,0,3,0,0,2 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
		    ["auto_whelen_edge_front_inner"] = "scene",
			["auto_whelen_edge_front_outer"] = "scene",
			["auto_whelen_edge_front_corner"] = "scene",
			["auto_whelen_edge_rear_corner"] = "scene",
			["auto_whelen_edge_rear_outer"] = "scene",
			["auto_whelen_edge_rear_middle"] = "scene",
			["auto_whelen_edge_rear_inner"] = "scene",
		},
		M3 = {
			["auto_whelen_edge_front_inner"] = "response",
			["auto_whelen_edge_front_outer"] = "response",
			["auto_whelen_edge_front_corner"] = "response",
			["auto_whelen_edge_rear_corner"] = "response",
			["auto_whelen_edge_rear_outer"] = "response",
			["auto_whelen_edge_rear_middle"] = "response",
			["auto_whelen_edge_rear_inner"] = "response",
		},
	},
	Auxiliary = {},
	Illumination = {
		L = {
			{ 14, SW }
		},
		R = {
			{ 13, SW }
		},
		T = {
			{ 3, SW }, { 4, SW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )