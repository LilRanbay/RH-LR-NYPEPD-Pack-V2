AddCSLuaFile()

local name = "NYPEPD Koito Flasher"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/koitoflasher.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.UsePhases = true
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "RED"
}

COMPONENT.Meta = {
	flasher = {
		AngleOffset = 90,
		W = 8.9,
		H = 8.9,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.1,
		Scale = 0.5,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 )
		}
	},
}

COMPONENT.Positions = {
	--front
	[1] = { Vector( -1.96, 0, 0 ), Angle( 0, 180, 0 ), "flasher" },
}

COMPONENT.Sections = {
	["auto_flasher"] = {
		[1] = {
			{ 1, "_1" }
		}
	}
}

COMPONENT.Patterns = {
	["auto_flasher"] = {
		["debug"] = { 1 },
	
		["scene"] = { 1 },
		["sceneA"] = { 1,0,0,0,0,0,0,0 },
		["sceneB"] = { 0,0,0,0,1,0,0,0 },
		["sceneC"] = { 1,0,0,0,0,0,0,0 },
		["sceneD"] = { 0,0,0,0,1,0,0,0 },
		
		["response"] = { 1 },
		["responseA"] = { 1,0,1,0,0,0,0,0 },
		["responseB"] = { 0,0,0,0,1,0,1,0 },
		["responseC"] = { 1,0,0,1,0,0,0,0 },
		["responseD"] = { 0,0,0,0,1,0,0,1 },
	}
}


COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_flasher"] = "scene" },
		M3 = { ["auto_flasher"] = "response" }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD Koito Flasher Gay"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD Koito Flasher"

COMPONENT.Meta = {
	flasher = {
		AngleOffset = 90,
		W = 8.9,
		H = 8.9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.1,
		Scale = 0.5,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 )
		}
	},

}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD Koito Flasher Really Gay"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD Koito Flasher"

COMPONENT.Meta = {
	flasher = {
		AngleOffset = 90,
		W = 8.9,
		H = 8.9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.1,
		Scale = 0.5,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 )
		}
	},

}

EMVU:AddAutoComponent( COMPONENT, name )