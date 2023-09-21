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
	[2] = "BLUE"
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
		[1] = { { 1, "_1" }, { 2, "_1" },  },
		[2] = { { 1, "_1" }  },
		[3] = { { 2, "_2" }  },
		
		-- SMALLER --
		
		[4] = { { 1, "_1", 0.6 }, { 2, "_1", 0.6 },  },
		[5] = { { 1, "_1", 0.6 }  },
		[6] = { { 2, "_2", 0.6 }  },
		
		-- SPLIT BOTH --
		
		[7] = { { 1, "_1" }, { 2, "_2" },  },
		[8] = { { 1, "_1", 0.6 }, { 2, "_2", 0.6 },  },
	}
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code6"] = { 1 },
		["code6SMALL"] = { 4 },
		
		["code6A"] = { 0 },
		["code6B"] = { 0 },
		["code6C"] = { 0 },
		["code6D"] = { 0 },
		["code6SMALLA"] = { 0 },
		["code6SMALLB"] = { 0 },
		["code6SMALLC"] = { 0 },
		["code6SMALLD"] = { 0 },
		["code6SPLITA"] = { 0 },
		["code6SPLITB"] = { 0 },
		["code6SSPLITA"] = { 3 },
		["code6SSPLITB"] = { 3 },
		["code6SMALLSPLITA"] = { 0 },
		["code6SMALLSPLITB"] = { 0 },
		["code6SMALLSSPLITA"] = { 6 },
		["code6SMALLSSPLITB"] = { 6 },
		
		["code3"] = { 1 },
		["code3SMALL"] = { 4 },
		
		["code3A"] = { 1,0,1,1,1,0,0,0,0,0 },
		["code3B"] = { 0,0,0,0,0,1,0,1,1,1 },
		["code3C"] = { 0,1,0,1,1,1,0,0,0,0 },
		["code3D"] = { 1,0,0,0,0,0,1,0,1,1 },
		["code3SMALLA"] = { 4,0,4,4,4,0,0,0,0,0 },
		["code3SMALLB"] = { 0,0,0,0,0,4,0,4,4,4 },
		["code3SMALLC"] = { 0,4,0,4,4,4,0,0,0,0 },
		["code3SMALLD"] = { 4,0,0,0,0,0,4,0,4,4 },
		["code3SPLITA"] = { 2,0,2,2,2,3,0,3,3,3 },
		["code3SPLITB"] = { 3,0,3,3,3,2,0,2,2,2 },
		["code3SSPLITA"] = { 7,3,7,7,7,3,3,3,3,3 },
		["code3SSPLITB"] = { 3,3,3,3,3,7,3,7,7,7 },
		["code3SMALLSPLITA"] = { 5,0,5,5,5,6,0,6,6,6 },
		["code3SMALLSPLITB"] = { 6,0,6,6,6,5,0,5,5,5 },
		["code3SMALLSSPLITA"] = { 8,6,8,8,8,6,6,6,6,6 },
		["code3SMALLSSPLITB"] = { 6,6,6,6,6,8,6,8,8,8 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_ion"] = "code6",
			},
			M3 = {
				["auto_ion"] = "code3",
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )