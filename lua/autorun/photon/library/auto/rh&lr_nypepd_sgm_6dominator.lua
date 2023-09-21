AddCSLuaFile()

local name = "NYPEPD Whelen Dominator 6"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/dominator6.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "AMBER"
}

COMPONENT.SubMaterials = {
	[3] = "rh&lr/improved_whelen_lights/glass_color/amber_glass",
}

COMPONENT.Meta = {
	dominator = {
		AngleOffset = 90,
		W = 3.2,
		H = 3.2,
		Sprite = "sentry/props/dominator/tir3_sprite",
		WMult = .5,
		Scale = .36,
		EmitArray = {
			Vector( -1, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( 1, 0, 0 ),
		}
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -0.2, -10.52, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[2] = { Vector( -0.2, -6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[3] = { Vector( -0.2, -2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[4] = { Vector( -0.2, 2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[5] = { Vector( -0.2, 6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[6] = { Vector( -0.2, 10.52, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
}

COMPONENT.Sections = {
	["auto_dom"] = {
		{
			{ 1, "_1" },{ 2, "_1" },{ 3, "_1" },{ 4, "_1" },{ 5, "_1" },{ 6, "_1" },
		},
		
		-- LEFT & RIGHT (2-7) --
		
		{
			{ 1, "_1" }
		},
		{
			{ 2, "_1" }
		},
		{
			{ 3, "_1" }
		},
		{
			{ 4, "_1" }
		},
		{
			{ 5, "_1" }
		},
		{
			{ 6, "_1" }
		},
		
		-- DIVERGE (8,10) --
		
		{
			{ 3, "_1" },{ 4, "_1" }
		},
		{
			{ 2, "_1" },{ 5, "_1" }
		},
		{
			{ 1, "_1" },{ 6, "_1" }
		},
	},
}

COMPONENT.Patterns = {
	["auto_dom"] = {
		["debug"] = { 1 },
		
		["off"] = { 0 },
		["left"] = { 7,7,6,6,5,5,4,4,3,3,2,2,0,2,2,0,2,2,0,0,2,2,0,0 },
		["right"] = { 2,2,3,3,4,4,5,5,6,6,7,7,0,7,7,0,7,7,0,0,7,7,0,0 },
		["diverge"] = { 8,8,9,9,10,10,0,0,10,10,0,0,10,10,0,0,10,10,0,0 },
	},
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_dom"] = "off",
			}
	},
	Auxiliary = {
			L = {
				["auto_dom"] = "left",
			},
			R = {
				["auto_dom"] = "right",
			},
			D = {
				["auto_dom"] = "diverge",
			},
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )