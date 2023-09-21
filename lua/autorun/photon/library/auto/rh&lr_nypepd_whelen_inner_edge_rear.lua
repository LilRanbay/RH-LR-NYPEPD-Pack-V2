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

local name = "NYPEPD Whelen Inner Edge Rear"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/police_props/whelen_inner_edge.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "BLUE",
	[4] = "RED",
	[5] = "BLUE",
	[6] = "RED",
	[7] = "BLUE",
	[8] = "RED",
}

COMPONENT.Meta = {
	auto_whelen_inner_edge = {
		AngleOffset = -90,
		W = 3.4,
		H = 3.4,
		Sprite = "rh&lr/sprites/whelen_lin6",
		WMult = .5,
		Scale = .4,
		EmitArray = {
			Vector( 0.94, 0, 0 ),
			Vector( 0.555, 0, 0 ),
			Vector( 0.1875, 0, 0 ),
			Vector( -0.94, 0, 0 ),
			Vector( -0.555, 0, 0 ),
			Vector( -0.1875, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -1.43, -1.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_inner_edge" },
	[2] = { Vector( -1.43, 1.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_inner_edge" },
	[3] = { Vector( -0.2, -4.63, 0.05 ), Angle( 0, 90+4, 0 ), "auto_whelen_inner_edge" },
	[4] = { Vector( -0.2, 4.63, 0.05 ), Angle( 0, 90-4, 0 ), "auto_whelen_inner_edge" },
	[5] = { Vector( 0.03, -7.3, 0.05 ), Angle( 0, 90+6, 0 ), "auto_whelen_inner_edge" },
	[6] = { Vector( 0.03, 7.3, 0.05 ), Angle( 0, 90-6, 0 ), "auto_whelen_inner_edge" },
	[7] = { Vector( 0.37, -10, 0.05 ), Angle( 0, 90+8.35, 0 ), "auto_whelen_inner_edge" },
	[8] = { Vector( 0.37, 10, 0.05 ), Angle( 0, 90-8.35, 0 ), "auto_whelen_inner_edge" },
}

COMPONENT.Sections = {
	["auto_whelen_inner_edge"] = {
		[1] = {
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_3" }, { 4, "_4" },
			{ 5, "_5" }, { 6, "_6" },
			{ 7, "_7" }, { 8, "_8" },
		},
		
		-- PHASE A --
		
		[2] = {
			{ 1, "_1" },
			{ 4, "_4" },
			{ 6, "_6" },
			{ 7, "_7" },
		},
		[3] = {
			{ 2, "_2" },
			{ 3, "_3" },
			{ 5, "_5" },
			{ 8, "_8" },
		},
		
		-- PHASE B --
		
		[4] = {
			{ 1, "_1" },
			{ 3, "_3" },
			{ 5, "_5" },
			{ 7, "_7" },
		},
		[5] = {
			{ 2, "_2" },
			{ 4, "_4" },
			{ 6, "_6" },
			{ 8, "_8" },
		},
		-- SCENE --
		
		[6] = {
			{ 5, "_5" }, { 6, "_6" },
			{ 7, "_7" }, { 8, "_8" },
		},
		[7] = {
			{ 7, "_7" }, { 8, "_8" },
		},
	},	
}

COMPONENT.Patterns = {
	["auto_whelen_inner_edge"] = {
		["debug"] = { 1 },
		
		["scene"] = { 
			7,7,6,7,7,6,7,7,
			7,6,7,6,7,7,6,7,6,7,
		},
		["sceneA"] = { 
			7,7,6,7,7,6,7,7,
			7,6,7,6,7,7,6,7,6,7,
		},
		["sceneB"] = { 
			7,7,6,7,7,6,7,7,
			7,6,7,6,7,7,6,7,6,7,
		},
		
		["rear"] = { 1 },
		["rearA"] = { 3,0,3,0,3,0,2,0,2,0,2,0, },
		["rearB"] = { 5,0,5,0,5,0,4,0,4,0,4,0, },
		
		["all"] = { 1 },
		["allA"] = { 3,0,3,0,3,0,2,0,2,0,2,0, },
		["allB"] = { 5,0,5,0,5,0,4,0,4,0,4,0, },
    }
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["auto_whelen_inner_edge"] = "scene", },
		M2 = {["auto_whelen_inner_edge"] = "rear", },
		M3 = {["auto_whelen_inner_edge"] = "all" },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )