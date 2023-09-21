AddCSLuaFile()

local name = "NYPEPD Whelen Dominator 8"

local W = "S_WHITE"
local COMPONENT = {}

COMPONENT.Model = "models/sentry/props/dominator8.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar" 
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "BLUE"
}

COMPONENT.SubMaterials = {
	[3] = "rh&lr/improved_whelen_lights/glass_color/blue_glass",
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
	[1] = { Vector( -0.2, 14.75, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[2] = { Vector( -0.2, -14.75, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[3] = { Vector( -0.2, 10.52, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[4] = { Vector( -0.2, -10.52, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[5] = { Vector( -0.2, 6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[6] = { Vector( -0.2, -6.33, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[7] = { Vector( -0.2, 2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	[8] = { Vector( -0.2, -2.14, 0.01 ), Angle( 0, 0, 0 ), "dominator" },
	
}

COMPONENT.Sections = {
	["auto_dom_outer"] = {
		{
			{ 1, "_1" }, { 2, "_1" }
		},
		
		-- C1 & C3 -- (2-3)
		
		{
			{ 1, "_1" }
		},
		{
			{ 2, "_1" }
		},
	},
	["auto_dom_inner"] = {
		{
			{ 3, "_1" }, { 4, "_1" }, { 5, "_1" }, { 6, "_1" }, { 7, "_1" }, { 8, "_1" },
		},
		
		-- C1 -- (2-7)
		
		{
			{ 3, "_1" }
		},
		{
			{ 5, "_1" }
		},
		{
			{ 7, "_1" }
		},
		{
			{ 8, "_1" },
		},
		{
			{ 6, "_1" }
		},
		{
			{ 4, "_1" }
		},
		
		-- C3 -- (8-9)
		
		{
			{ 3, "_1" }, { 5, "_1" }, { 7, "_1" }
		},
		
		{
			{ 4, "_1" }, { 6, "_1" }, { 8, "_1" }
		},
	},
}

COMPONENT.Patterns = {
	["auto_dom_outer"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		
		["c1"] = { 2,0,0,0,0,0,0,3,0,0,0,0,0,0 },
		["c3"] = { 
			2,0,2,0,2,0,3,0,3,0,3,0,2,0,2,0,2,0,3,0,3,0,3,0,
			2,0,3,0,2,0,3,0,2,0,3,0,
		},
	},
	["auto_dom_inner"] = {
		["debug"] = { 1 },
		["off"] = { 0 },
		
		["c1"] = { 0,2,3,4,5,6,7,0,7,6,5,4,3,2 },
		["c3"] = { 
			8,0,8,0,8,0,9,0,9,0,9,0,8,0,8,0,8,0,9,0,9,0,9,0,
			8,0,9,0,8,0,9,0,8,0,9,0,
		},
	},
}

COMPONENT.TrafficDisconnect = {
	["auto_dom_inner"] = {
		1,2,3,4,5,6,7,8
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_dom_inner"] = "c1",
				["auto_dom_outer"] = "c1",
	        },
			M3 = {
				["auto_dom_inner"] = "c3",
				["auto_dom_outer"] = "c3",
			}
	},
	Auxiliary = {
			L = {["auto_dom_inner"] = "off", ["auto_dom_outer"] = "off"},
			D = {["auto_dom_inner"] = "off", ["auto_dom_outer"] = "off"},
			R = {["auto_dom_inner"] = "off", ["auto_dom_outer"] = "off"},
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )