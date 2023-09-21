AddCSLuaFile()

local name = "NYPEPD Whelen Dominator 2"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/dominator2.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
}

COMPONENT.SubMaterials = {
	[3] = "rh&lr/improved_whelen_lights/glass_color/blue_glass",
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
	[1] = { Vector( -0.2, -2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[2] = { Vector( -0.2, 2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
}

COMPONENT.Sections = {
	["auto_dom"] = {
		[1] = {
			{ 1, "_1" },{ 2, "_2" },
		},
		[2] = {
			{ 1, "_1" },
		},
		[3] = {
			{ 2, "_2" },
		},
	},
}

COMPONENT.Patterns = {
	["auto_dom"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		
		["c1"] = { 2,3,2,0 },
		["c1A"] = { 2,2,3,3,0,0,0,0,0,0,3,3 },
		["c1B"] = { 0,0,0,0,2,2,3,3,2,2,0,0 },
		
		["c3"] = { 
			2,0,2,0,2,0,3,0,3,0,3,0,2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,3,0,2,0,3,0,2,0,3,0,
		},
		["c3A"] = { 
			0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,1,0,
			0,0,1,0,0,0,1,0,0,0,1,0,
		},
		["c3B"] = { 
			1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,
			1,0,0,0,1,0,0,0,1,0,0,0,
		},
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_dom"] = "c1",
	        },
			M3 = {
				["auto_dom"] = "c3",
			}
		},
	Auxiliary = {
			L = {["auto_dom"] = "off"},
			D = {["auto_dom"] = "off"},
			R = {["auto_dom"] = "off"},
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

