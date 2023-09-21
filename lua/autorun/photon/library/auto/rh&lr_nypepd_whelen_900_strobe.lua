AddCSLuaFile()

local name = "NYPEPD Whelen 900 Strobe"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/whelen900_strobe.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "RED",
}

COMPONENT.Meta = {
	flasher = {
		AngleOffset = 90,
		W = 10.0,
		H = 16.8,
		Sprite = "sprites/emv/tdm_halogen2",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 3.5, 0, 0 ),
			Vector( 3, 0, 0 ),
			Vector( 2.5, 0, 0 ),
			Vector( 2, 0, 0 ),
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -3.5, 0, 0 ),
			Vector( -3, 0, 0 ),
			Vector( -2.5, 0, 0 ),
			Vector( -2, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		},
		NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
	},

}

COMPONENT.Positions = {
	--front
	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "flasher" },
}

COMPONENT.Sections = {
	["auto_flasher_strobe"] = {
		[1] = {
			{ 1, "_1" },
		},
	},
}

COMPONENT.Patterns = {
	["auto_flasher_strobe"] = {
		["code"] = {
			1, 0, 1, 0, 1, 0,
		},
		["codeA"] = {
			1, 0, 1, 0, 1, 0, 
			0, 0, 0, 0, 0, 0,
		},
		["codeB"] = {
			0, 0, 0, 0, 0, 0, 
			1, 0, 1, 0, 1, 0,
		},
	},
}


COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_flasher_strobe"] = "code", 
		},
		M2 = { 
			["auto_flasher_strobe"] = "code", 
		},
		M3 = {
			["auto_flasher_strobe"] = "code",
		},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

