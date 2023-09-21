-- Edited by LilRanbay
AddCSLuaFile()

local name = "NYPEPD Whelen LINZ6"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/whelen_linz6.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
    [2] = "WHITE"
}

COMPONENT.Meta = {
	whelen_linz6_left = {
		AngleOffset = -90,
		W = 4.6,
		H = 5,
		Sprite = "rh&lr/sprites/emv_linz6_left",
		WMult = .75,
		Scale = .25,
		EmitArray = {
			Vector( -0.65, 0, 0 ),
			Vector( -0.15, 0, 0 ),
			Vector( 0.37, 0, 0 ),
		}
	},
	whelen_linz6_right = {
		AngleOffset = -90,
		W = 4.6,
		H = 5,
		Sprite = "rh&lr/sprites/emv_linz6_right",
		WMult = .75,
		Scale = .25,
		EmitArray = {
			Vector( 0.65, 0, 0 ),
			Vector( 0.15, 0, 0 ),
			Vector( -0.35, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.9, 0.72, 0 ), Angle( 0, 0, 0 ), "whelen_linz6_left" },
	[2] = { Vector( -0.9, 0.72, 0 ), Angle( 0, 0, 0 ), "whelen_linz6_right" },

}

COMPONENT.Sections = {
	["auto_whelen_linz6"] = {
		[1] = { { 1, "_1" }, { 2, "_1" },  },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
		[4] = { { 1, "_1" }, { 2, "_2" },  },
		[5] = { { 1, "_2" }, { 2, "_2" },  },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_linz6"] = {
		["code6"] = { 1 },
		["code6A"] = { 0 },
		["code6B"] = { 0 },
		["code6SA"] = { 0 },
		["code6SB"] = { 0 },
		["code6RA"] = { 0 },
		["code6RB"] = { 0 },
		["code6ALTA"] = { 0 },
		["code6ALTB"] = { 0 },
		["code6TAUA"] = { 0 },
		["code6TAUB"] = { 0 },
		
		["code3"] = { 1 },
		["code3A"] = { 1,0,1,1,1,0,0,0,0,0,0,0 },
		["code3B"] = { 0,0,0,0,0,0,1,0,1,1,1,0 },
		["code3SA"] = { 2,0,2,2,2,0,3,0,3,3,3,0 },
		["code3SB"] = { 3,0,3,3,3,0,2,0,2,2,2,0 },
		["code3RA"] = { 1,0,1,1,1,0,5,5,5,5,5,0 },
		["code3RB"] = { 5,5,5,5,5,0,1,0,1,1,1,0 },
		["code3ALTA"] = { 
			1,0,1,1,1,0,0,0,0,0,0,0,
			5,0,5,5,5,0,0,0,0,0,0,0
		},
		["code3ALTB"] = { 
			0,0,0,0,0,0,1,0,1,1,1,0,
			0,0,0,0,0,0,5,0,5,5,5,0
		},
		["code3TAUA"] = { 1,1,1,1,0,5,5,5,5,0 },
		["code3TAUB"] = { 5,5,5,0,1,1,1,1,0,5 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_linz6"] = "code6",
			},
			M3 = {
				["auto_whelen_linz6"] = "code3",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
