AddCSLuaFile()

local name = "NYPEPD Whelen Dominator 4"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/dominator4.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
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
	[1] = { Vector( -0.2, -6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[2] = { Vector( -0.2, -2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[3] = { Vector( -0.2, 2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[4] = { Vector( -0.2, 6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
}

COMPONENT.Sections = {
	["auto_dom"] = {
		[1] = {
			{ 1, "_1" },{ 2, "_2" },{ 3, "_1" },{ 4, "_2" },
		},
		[2] = {
			{ 1, "_1" },{ 4, "_1" },
		},
		[3] = {
			{ 2, "_2" },{ 3, "_2" },
		},
	},
}

COMPONENT.Patterns = {
	["auto_dom"] = {
		["invest"] = { 1 },
		["investA"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		["investB"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		
		["respnd"] = { 1 },
		["respndA"] = { 
			2,0,2,0,2,2,2,0,0,0,
			3,0,3,0,3,3,3,0,0,0,
		},
		["respndB"] = {
			3,0,3,0,3,3,3,0,0,0,
			2,0,2,0,2,2,2,0,0,0,
		},
	},
}


COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_dom"] = "invest",
			},
			M3 = {
				["auto_dom"] = "respnd",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

