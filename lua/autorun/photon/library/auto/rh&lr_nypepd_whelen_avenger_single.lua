AddCSLuaFile()

local R = "RED"
local B = "BLUE"

local name = "NYPEPD Whelen Avenger Single"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/dashlight_single.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "WHITE",
}

COMPONENT.SubMaterials = {
	[0] = "rh&lr/improved_whelen_lights/lights",
}

COMPONENT.Meta = {
	auto_avenger = {
		AngleOffset = 90,
		W = 25,
		H = 31,
		Sprite = "rh&lr/sprites/whelen_lin6",
		Scale = .4,
		WMult = .5,
		EmitArray = {
			Vector( 7.2, 0, 0 ),
			Vector( 4.3, 0, 0 ),
			Vector( 1.4, 0, 0 ),
			Vector( -7.2, 0, 0 ),
			Vector( -4.3, 0, 0 ),
			Vector( -1.4, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 1.9, 0, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },

}

COMPONENT.Sections = {
	["auto_whelen_avenger"] = {
		[1] = {
			{1, "_1" }
		},
		[2] = {
			{1, "_2" }
		},
	}
}

COMPONENT.Patterns = {
	["auto_whelen_avenger"] = {
		["invest"] = { 1 },
		["investA"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		["investB"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		["investC"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		["investD"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,1,1 },
		
		["respnd"] = { 1 },
		["respndA"] = { 
			1,0,1,0,1,1,1,0,0,0,
			0,0,0,0,0,0,0,0,0,0,
		},
		["respndB"] = {
			0,0,0,0,0,0,0,0,0,0,
			1,0,1,0,1,1,1,0,0,0,
		},
		["respndC"] = { 
			0,0,1,0,1,0,1,1,1,0,
			0,0,0,0,0,0,0,0,0,0,
		},
		["respndD"] = {
			0,0,0,0,0,0,0,0,0,0,
			0,0,1,0,1,0,1,1,1,0,
		},
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_avenger"] = "invest",
			},
			M3 = {
				["auto_whelen_avenger"] = "respnd",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )