AddCSLuaFile()

local name = "NYPEPD Whelen Dominator 8 CVPI"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/dominator8_cv.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "WHITE",
	[3] = "RED",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	dominator = {
		AngleOffset = 90,
		W = 3.2,
		H = 3.2,
		Sprite = "sentry/props/dominator/tir3_sprite",
		WMult = .5,
		Scale = .36,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -0.2, 22.233, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[2] = { Vector( -0.2, -22.233, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[3] = { Vector( -0.2, 17.2, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[4] = { Vector( -0.2, -17.2, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[5] = { Vector( -0.2, 12.167, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[6] = { Vector( -0.2, -12.167, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[7] = { Vector( -0.2, 7.134, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[8] = { Vector( -0.2, -7.134, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	
}

COMPONENT.Sections = {
	["auto_dom"] = {
		[1] = {
			{ 1, "_1" }, { 2, "_3" }, { 3, "_4" }, { 4, "_1" }, { 5, "_1" }, { 6, "_3" }, { 7, "_1" }, { 8, "_3" },
		},
	},
	["auto_dom_r_corner"] = {
		[1] = { 
			{ 1, "_1" }, { 2, "_3" }, 
	    },
		[2] = { 
			{ 1, "_1" }
	    },
		[3] = { 
			{ 2, "_3" }
	    },
    },
	["auto_dom_r_outer"] = {
		[1] = { 
			{ 3, "_4" }, { 4, "_1" }, 
	    },
		[2] = { 
			{ 3, "_4" }
	    },
		[3] = { 
			{ 4, "_1" }
	    },
    },
	["auto_dom_r_mid"] = {
		[1] = { 
			{ 5, "_1" }, { 6, "_3" }, 
	    },
		[2] = { 
			{ 5, "_1" }
	    },
		[3] = { 
			{ 6, "_3" }
	    },
    },
	["auto_dom_r_inner"] = {
		[1] = { 
			{ 7, "_1" }, { 8, "_3" }, 
	    },
		[2] = { 
			{ 7, "_1" }
	    },
		[3] = { 
			{ 8, "_3" }
	    },
    },
}

COMPONENT.Patterns = {
	["auto_dom"] = {
		["debug"] = { 1 },
	},
	["auto_dom_r_corner"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		["scene"] = { 2,2,2,2,2,0,0,0,0,3,3,3,3,3,0,0,0,0, },
		["enroute"] = { 2,2,0,2,2,0,3,3,0,3,3,0 },
	},
	["auto_dom_r_outer"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		["scene"] = { 0,2,2,2,2,2,0,0,0,0,3,3,3,3,3,0,0,0, },
		["enroute"] = { 3,3,3,0,2,2,2,0 },
	},
	["auto_dom_r_mid"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		["scene"] = { 0,0,2,2,2,2,2,0,0,0,0,3,3,3,3,3,0,0, },
		["enroute"] = { 2,0,2,0,3,0,3,0 },
	},
	["auto_dom_r_inner"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		["scene"] = { 0,0,0,2,2,2,2,2,0,0,0,0,3,3,3,3,3,0, },
		["enroute"] = { 3,0,3,0,2,0,2,0 },
	},
}

COMPONENT.Modes = {
	Primary = {
				M1 = {
					["auto_dom_r_corner"] = "scene",
					["auto_dom_r_outer"] = "scene",
					["auto_dom_r_mid"] = "scene",
					["auto_dom_r_inner"] = "scene",
	            },
				M3 = {
					["auto_dom_r_corner"] = "enroute",
					["auto_dom_r_outer"] = "enroute",
					["auto_dom_r_mid"] = "enroute",
					["auto_dom_r_inner"] = "enroute",
				},
				PARK = {
					["auto_dom_r_corner"] = "scene",
					["auto_dom_r_outer"] = "scene",
					["auto_dom_r_mid"] = "scene",
					["auto_dom_r_inner"] = "scene",
	            },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )