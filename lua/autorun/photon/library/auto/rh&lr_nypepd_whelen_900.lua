AddCSLuaFile()

local name = "NYPEPD Whelen 900"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/whelen900.mdl"
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
		W = 9.4,
		H = 16.8,
		Sprite = "sprites/emv/tdm_halogen2",
		WMult = 1,
		Scale = 0.425,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
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
	["auto_flasher"] = {
		[1] = {
			{ 1, "_1", { 17, 0, 0 } },
		},
		[2] = {
			{ 1, "_1", { -17, 0, 0 } },
		},
		[3] = {
			{ 1, "_1", { 7, 0, 0 } },
		},
		[4] = {
			{ 1, "_1", { -7, 0, 0 } },
		},
		[5] = {
			{ 1, "_1", { 12, 0, 0 } },
		},
		[6] = {
			{ 1, "_1", { -12, 0, 0 } },
		},
	},
}

COMPONENT.Patterns = {
	["auto_flasher"] = {
		["code"] = {
			{5},
		},
		["codeA"] = {
			{5},
		},
		["codeB"] = {
			{6},
		},
		["codeFast"] = {
			{1},
		},
		["codeFastA"] = {
			{1},
		},
		["codeFastB"] = {
			{2},
		},
		["codeSlow"] = {
			{3},
		},
		["codeSlowA"] = {
			{3},
		},
		["codeSlowB"] = {
			{4},
		},
		["codeIncr"] = {
			{3},
		},
		["codeIncrA"] = {
			{3},
		},
		["codeIncrB"] = {
			{4},
		},
		["code2"] = {
			{5},
		},
		["code2A"] = {
			{5},
		},
		["code2B"] = {
			{6},
		},
		["code2Fast"] = {
			{1},
		},
		["code2FastA"] = {
			{1},
		},
		["code2FastB"] = {
			{2},
		},
		["code2Slow"] = {
			{3},
		},
		["code2SlowA"] = {
			{3},
		},
		["code2SlowB"] = {
			{4},
		},
		["code2Incr"] = {
			{5},
		},
		["code2IncrA"] = {
			{5},
		},
		["code2IncrB"] = {
			{6},
		},
		["code3"] = {
			{5},
		},
		["code3A"] = {
			{5},
		},
		["code3B"] = {
			{6},
		},
		["code3Fast"] = {
			{1},
		},
		["code3FastA"] = {
			{1},
		},
		["code3FastB"] = {
			{2},
		},
		["code3Slow"] = {
			{3},
		},
		["code3SlowA"] = {
			{3},
		},
		["code3SlowB"] = {
			{4},
		},
		["code3Incr"] = {
			{1},
		},
		["code3IncrA"] = {
			{1},
		},
		["code3IncrB"] = {
			{2},
		},
	},
}


COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_flasher"] = "code", 
		},
		M2 = { 
			["auto_flasher"] = "code2", 
		},
		M3 = {
			["auto_flasher"] = "code3",
		},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

