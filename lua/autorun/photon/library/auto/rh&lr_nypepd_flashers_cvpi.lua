-- Edited by LilRanbay
AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "NYPEPD CVPI Flashers"

local COMPONENT = {}

COMPONENT.Base = "RH&LR CVPI Flashers"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
    [2] = "S_WHITE"
}

COMPONENT.Sections = {
	["headlights"] = {
       [1] = { { 1, "S_WHITE", { 12, 0, 0 } }, { 2, "S_WHITE", { -12, 0, 0 } }, },
    },
	["reverse"] = {
	   [1] = { { 3, "_1" }, { 4, "_2" }, },
	   [2] = { { 3, "_1" }, },
	   [3] = { { 4, "_2" }, },
	}
}

COMPONENT.Patterns = {
	["headlights"] = {
		["off"] = { 0 },
		["off09"] = { 0 },
		["off10"] = { 0 },
		["off11"] = { 0 },
		
		["on"] = { 1 },
		["on09"] = { 1 },
		["on10"] = { 1 },
		["on11"] = { 1 },
	},
	["reverse"] = {
		["off"] = { 0 },
		["off09"] = { 0 },
		["off10"] = { 0 },
		["off11"] = { 0 },

		["on"] = { 1 },
		["on09"] = { 0 },
		["on10"] = {
			2,0,2,0,2,0,0,0,0,
			3,0,3,0,3,0,0,0,0
		},
		["on11"] = {
			2,0,2,0,2,3,0,3,0,3,
			2,0,2,0,2,3,0,3,0,3,
			2,0,2,3,0,3,0,
			2,0,2,3,0,3,0,
			1,0,1,0,1,0,0,0,0,0,
			1,0,1,0,1,0,0,0,0,0,
			1,0,1,0,0,0,0,
			1,0,1,0,0,0,0,
			3,0,3,0,3,2,0,2,0,2,
			3,0,3,0,3,2,0,2,0,2,
			3,0,3,2,0,2,0,
			3,0,3,2,0,2,0,
			0,0,0,0,0,1,0,1,0,1,
			0,0,0,0,0,1,0,1,0,1,
			0,0,0,1,0,1,0,
			0,0,0,1,0,1,0,
		}
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["headlights"] = "off",
				["reverse"] = "off",
			},
			M3 = {
				["headlights"] = "on",
				["reverse"] = "on",
			},
			BRAKE = {
				["reverse"] = "off",
			},
			REVERSE = {
				["reverse"] = "off",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYPEPD CVPI Flashers (NB)"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD CVPI Flashers"

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["reverse"] = "off",
			},
			M3 = {
				["reverse"] = "on",
			},
		},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )