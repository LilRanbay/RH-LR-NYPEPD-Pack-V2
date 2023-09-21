AddCSLuaFile()

local name = "NYPEPD Whelen Vertex"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/small_led.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.NotLegacy = true
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_vertex = {
		AngleOffset = 90,
		W = 1.25,
		H = 1.25,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 0.3,
		WMult = 1,
		EmitArray = {
            Vector( -0.16, -0.22, 0 ),
            Vector( -0.28, 0, 0 ),
            Vector( -0.15, 0.22, 0 ),
            Vector( 0.16, -0.22, 0 ),
            Vector( 0.28, 0, 0 ),
            Vector( 0.15, 0.22, 0 ),
        }
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0.32 ), Angle( 0, 0, -90 ), "auto_vertex" },

}

COMPONENT.Sections = {
	["auto_whelen_vertex"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_vertex"] = {
		["code6"] = { 1 },
		["code6A"] = { 0 },
		["code6B"] = { 0 },
		
		["code3"] = { 1 },
		["code3A"] = { 1,0,1,0,1,0,1,0,0,0,0,0,0,0 },
		["code3B"] = { 0,0,0,0,0,0,0,1,0,1,0,1,0,1 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_whelen_vertex"] = "code6",
			},
			M3 = {
				["auto_whelen_vertex"] = "code3",
			}
		},
	Auxiliary = {},
	Illumination = {

	}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD Whelen Vertex ANNOYING"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD Whelen Vertex"
COMPONENT.NotLegacy = false

COMPONENT.Meta = {
	auto_vertex = {
		AngleOffset = 0,
		W = 1.25,
		H = 1.25,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 0.3,
		WMult = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		EmitArray = {
            Vector( -0.16, -0.22, 0 ),
            Vector( -0.28, 0, 0 ),
            Vector( -0.15, 0.22, 0 ),
            Vector( 0.16, -0.22, 0 ),
            Vector( 0.28, 0, 0 ),
            Vector( 0.15, 0.22, 0 ),
        }
	},
}

EMVU:AddAutoComponent( COMPONENT, name )