AddCSLuaFile()

local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE" 	
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

local name = "NYPEPD Federal Signal GS1"

local COMPONENT = {}
COMPONENT.NotLegacy = true
COMPONENT.Model = "models/lightbars/fs_gh1/fs_gh1.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Exterior"
COMPONENT.Bodygroups = {
	{ 1, 1 },
}
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
	[1] = R,
	[2] = B,
	[3] = A,
	[4] = W,
}

COMPONENT.Meta = {
	auto_gs1 = {
		AngleOffset = -90,
		W = 4.8,
		H = 3.6,
		Sprite = "sprites/emv/square_src",
		WMult = 1,
		Scale = .3,
		EmitArray = {
			Vector( 1.5, 0, 0 ),
			Vector( 1, 0, 0 ),
			Vector( 0.5, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.5, 0, 0 ),
			Vector( -1, 0, 0 ),
			Vector( -0.5, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {
	[1] = { Vector( 1.6, 0, 3.25 ), Angle( 0, -90, 0 ), "auto_gs1" },
}

COMPONENT.Sections = {
	["auto_gs1"] = {
		[1] = {
			{ 1 , "_1" }, 
		}
	}
}

COMPONENT.Patterns = {
	["auto_gs1"] = {
		["debug"] = { 1 },
	
		["scene"] = { 1 },
		["sceneA"] = { 0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0 },
		["sceneB"] = { 0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0 },
		["sceneC"] = { 0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0 },
		["sceneD"] = { 0,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0 },
		
		["response"] = { 1 },
		["responseA"] = { 1,0,1,0,1,0,0,0,0,0,0,0 },
		["responseB"] = { 0,0,0,0,0,0,1,0,1,0,1,0 },
		["responseC"] = { 1,0,0,1,0,0,1,0,0,0,0,0 },
		["responseD"] = { 0,1,0,0,0,0,0,1,0,0,1,0 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_gs1"] = "scene"
			},
			M3 = {
				["auto_gs1"] = "response"
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )