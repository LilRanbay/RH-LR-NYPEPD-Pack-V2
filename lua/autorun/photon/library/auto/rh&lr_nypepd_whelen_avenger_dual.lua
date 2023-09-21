AddCSLuaFile()

local R = "RED"
local B = "BLUE"

local name = "NYPEPD Whelen Avenger Dual"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/dashlight_double.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
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

	[1] = { Vector( 2.4, -10.55, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },
	[2] = { Vector( 2.4, 10.55, -0.9 ), Angle( 0, 90, 0 ), "auto_avenger" },

}

COMPONENT.Sections = {
	["auto_whelen_avenger"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } }
    },
}

COMPONENT.Patterns = {
	["auto_whelen_avenger"] = {
		["all"] = { 1 },
		
		["onscne"] = {
        	0,0,0,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	0,0,0,0,
        },
		["onscneA"] = {
        	0,0,0,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	0,0,0,0,
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        },
		["onscneB"] = {
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        	0,0,0,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	0,0,0,0,
        },
        ["onscneC"] = {
        	0,0,0,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	0,0,0,0,
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        },
		["onscneD"] = {
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        	0,0,0,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	0,0,0,0,
        },
		["onscneSA"] = {
        	0,3,1,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	2,0,0,0,
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        },
		["onscneSB"] = {
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        	0,2,1,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	3,0,0,0,
        },
        ["onscneSC"] = {
        	0,3,1,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	2,0,0,0,
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        },
		["onscneSD"] = {
        	0,0,0,0,
        	0,0,0,0,0,0,0,0,0,0,0,
        	0,0,0,0,
        	0,2,1,1,
        	1,1,1,0,1,0,1,0,1,1,1,
        	3,0,0,0,
        },
		
		["respnd"] = { 1 },
		["respndA"] = { 1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0 },
		["respndB"] = { 0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0 },
		["respndC"] = { 0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0 },
		["respndD"] = { 1,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0 },
		["respndSA"] = { 2,0,2,0,2,0,2,0,3,0,3,0,3,0,3,0 },
		["respndSB"] = { 3,0,3,0,3,0,3,0,2,0,2,0,2,0,2,0 },
		["respndSC"] = { 0,3,0,2,0,2,0,2,0,2,0,3,0,3,0,3 },
		["respndSD"] = { 0,2,0,3,0,3,0,3,0,3,0,2,0,2,0,2 },
    }
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_avenger"] = "onscne",
			},
			M3 = {
				["auto_whelen_avenger"] = "respnd",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )