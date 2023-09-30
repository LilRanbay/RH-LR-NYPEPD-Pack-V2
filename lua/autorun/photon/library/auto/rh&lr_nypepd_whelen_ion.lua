-- Edited by LilRanbay
AddCSLuaFile()

local name = "NYPEPD Whelen Ion"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/ion.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 6.14,
		H = 6.14,
		Sprite = "sprites/emv/whelen_ion_left_new",
		WMult = 1,
		Scale = .3,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		EmitArray = {
			Vector( -0.875, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0.875, 0, 0 ),
		}
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 6.14,
		H = 6.14,
		Sprite = "sprites/emv/whelen_ion_right_new",
		WMult = 1,
		Scale = .3,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		EmitArray = {
			Vector( -0.875, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0.875, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.3, 0, 0 ), Angle( 0, 0, 0 ), "auto_ion_left" },
	[2] = { Vector( -1.3, 0, 0 ), Angle( 0, 0, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		{ { 1, "_1" }, { 2, "_2" },  },
		{ { 1, "_1" }  },
		{ { 2, "_2" }  },

		{ { 1, "_1", 0.5 }, { 2, "_2", 0.5 },  },
		{ { 1, "_1", 0.5 }  },
		{ { 2, "_2", 0.5 }  },
	}
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["scene"] = { 1 },
		["sceneA"] = { 
			4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    		4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    	},
		["sceneB"] = { 
			4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    		4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    	},
		["sceneC"] = { 
			4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    		4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    	},
		["sceneD"] = { 
			4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    		4,1,4,0,4,1,4,0,
    		0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
    	},
		
		["response"] = { 1 },
		["responseA"] = { 1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0, },
		["responseB"] = { 0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0 },
		["responseC"] = { 0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0 },
		["responseD"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1, },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_ion"] = "scene"
			},
			M3 = {
				["auto_ion"] = "response"
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )