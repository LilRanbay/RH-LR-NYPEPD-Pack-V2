AddCSLuaFile()

local name = "NYPEPD SoundOff Intersector"

local COMPONENT = {}

local FLICK = 0.25

COMPONENT.Model = "models/schmal/soundoff_intersector.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "WHITE"
}

COMPONENT.Meta = {
	soundoff_cir = {
		AngleOffset = -90,
		W = .7,
		H = .7,
		Sprite = "sprites/emv/circular_src",
		WMult = 1,
		Scale = .35,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0.87, 0.67 ), Angle( 0, 0, 0 ), "soundoff_cir" },
	[2] = { Vector( 0.3, 0.82, 0.67 ), Angle( 0, -22.5, 0), "soundoff_cir" },
	[3] = { Vector( -0.3, 0.82, 0.67 ), Angle( 0, 22.5, 0), "soundoff_cir" },
	[4] = { Vector( 0.58, 0.62, 0.67 ), Angle( 0, -45, 0 ), "soundoff_cir" },
	[5] = { Vector( -0.58, 0.62, 0.67 ), Angle( 0, 45, 0 ), "soundoff_cir" },

}

COMPONENT.Sections = {
	["auto_intersector"] = {
		[1] = { { 1, "_1" }, { 2, "_1" }, { 3, "_1" }, { 4, "_1" }, { 5, "_1" },  },
		[2] = { { 1, "_2" }, { 2, "_2" }, { 3, "_2" }, { 4, "_2" }, { 5, "_2" },  },
	},
}

COMPONENT.Patterns = {
	["auto_intersector"] = {
		["all"] = { 1 },
		
		["scene"] = { 1 },
		["sceneA"] = { 0 },
		["sceneB"] = { 0 },
		
		["response"] = { 1 },
		["responseA"] = { 1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0 },
		["responseB"] = { 0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,1 }
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_intersector"] = "scene", },
		M3 = { ["auto_intersector"] = "response", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD SoundOff Intersector CVPI"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD SoundOff Intersector"

COMPONENT.Meta = {
	soundoff_cir = {
		AngleOffset = -90,
		W = .7,
		H = .7,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.25,
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

EMVU:AddAutoComponent( COMPONENT, name )