AddCSLuaFile()

local R = "RED"
local W = "WHITE"
local SW = "S_WHITE"
local CW = "C_WHITE"
local B = "BLUE" 	
local DR = "D_RED"
local A = "AMBER"
local G = "GREEN"

local name = "NYPEPD Federal Signal GH1"

local COMPONENT = {}
COMPONENT.NotLegacy = true
COMPONENT.Model = "models/lightbars/fs_gh1/fs_gh1.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Exterior"
COMPONENT.Bodygroups = {
	{ 1, 0 },
}
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
	[1] = R,
	[2] = B,
	[3] = A,
	[4] = SW,
}

COMPONENT.Meta = {
	auto_gh1 = {
		AngleOffset = -90,
		W = 4.8,
		H = 3.6,
		Sprite = "sprites/emv/square_src",
		WMult = 1,
		Scale = 0.325,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 ),
		}
	}
}

COMPONENT.Positions = {
	[1] = { Vector( 1.6, 0, 3.25 ), Angle( 0, -90, 0 ), "auto_gh1" },
}

COMPONENT.Sections = {
	["main"] = {
		[1] = {
			{ 1, "_1", {10, 0 , 0} }, 
		},
		[2] = {
			{ 1, "_1", {-10, 0 , 0} }, 
		},
		[3] = {
			{ 1, "_1"}, 
		},
	},
}

COMPONENT.Patterns = {
	["main"] = {
		["code1"] = { 3 },

		["code1A"] = { 1 },
		["code1B"] = { 2 },
		--["code1C"] = { 3 },

		["code2"] = { 3 },

		["code2A"] = { 1 },
		["code2B"] = { 2 },
		--["code2C"] = { 3 },

		["code3"] = { 3 },

		["code3A"] = { 1 },
		["code3B"] = { 2 },
		--["code3C"] = { 3 },
	},
}

COMPONENT.TrafficDisconnect = {

}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["main"] = "code1"
			},
			M2 = {
				["main"] = "code2"
			},
			M3 = {
				["main"] = "code3"
			}
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )