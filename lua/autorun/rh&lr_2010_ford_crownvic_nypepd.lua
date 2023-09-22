AddCSLuaFile()   

local VehicleName = "2010 Ford Crown Victoria PEPD [NY] [RH&LR]"

local EMV = {}

local A = "AMBER" 
local R = "RED"
local G = "GREEN"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

EMV.Siren = "lr_w_295HFSA6"
EMV.Skin = "rh&lr/nypepd/cvpi10/cvpi_patrol"
EMV.Color = Color(6,10,22) 

EMV.SubMaterials = { 
	["11"] = "rh&lr/glass/cvpi10/cvpi_glass_fs", 
}
 
EMV.Liveries = {
	["PEPD Global"] = {
		["PEPD Patrol White"] = "rh&lr/nypepd/cvpi10/cvpi_patrol",
		["PEPD Patrol Black"] = "rh&lr/nypepd/cvpi10/cvpi_patrol_black"
	}
}

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- pushbar
	{ 2, 0 }, -- grille
	{ 3, 0 }, -- hubcaps
	{ 4, 0 }, -- doortrim
	{ 5, 1 }, -- rearfascia
	{ 6, 0 }, -- reartrim
	{ 7, 0 }, -- handles
	{ 8, 0 }, -- spotlight_l
	{ 9, 0 }, -- spotlight_r
	{ 10, 1 }, -- trunkemblem
	{ 11, 2 }, -- trunkmodel
	{ 12, 0 }, -- plateholder
	{ 13, 0 }, -- console
	{ 14, 1 }, -- windowbars
	{ 15, 0 }, -- partition
	{ 16, 0 }, -- rims
	{ 17, 0 }, -- mirrors
	{ 18, 0 }, -- door_l_notch
	{ 19, 0 }, -- door_r_notch
	{ 20, 0 }, -- keypad
	{ 21, 0 }, -- bumperf_chrome
	{ 22, 0 }, -- bumperr_chrome
	{ 23, 0 }, -- rainguards
	{ 24, 0 }, -- odometer
	{ 25, 0 }, -- clamped1
	{ 26, 0 }, -- clamped2
	{ 27, 0 }, -- clamped3
	{ 28, 0 }, -- clamped4
	{ 29, 0 }, -- clamped5
	{ 30, 0 }, -- clamped6
	{ 31, 0 }, -- clamped7
}

EMV.Props = {
	-- INTERIOR PROPS --
	-- DASHCAM
    {
		Model = "models/supermighty/photon/dashcam.mdl",
		Scale = 1,
		Pos = Vector(7.8, 14, 58.3),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- EZ PASS
	{
		Model = "models/pringle/nysp/ez-pass.mdl",
		Scale = 0.7,
		Pos = Vector(3, 19.2, 59.6),      
		Ang = Angle( 0, 180-1.5, 30),
		RenderGroup = RENDERGROUP_OPAQUE,
        RenderMode = RENDERMODE_NONE,
	},
	-- RADAR
	{
		Model = "models/pringle/props/stalkerdsr2x.mdl",
		Scale = 0.2,
		Pos = Vector(-5, 25.9, 47.9),
		Ang = Angle( 1.8, 0, -4),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl", 
		Scale = 0.25,
		Pos = Vector(-30, 30.5, 46.7),
		Ang = Angle( 8, 180, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,    
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl", 
		Scale = 0.25,
		Pos = Vector(-23, -61.4, 61.2),   
		Ang = Angle( 180-8, 0, -2),   
		RenderGroup = RENDERGROUP_OPAQUE, 
		RenderMode = RENDERMODE_NONE, 
	},
	-- GUNS
    {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = 0.5,
		Pos = Vector(5, -16.5, 40),
		Ang = Angle( -10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/pringle/props/m16_rifle/m16gunlock.mdl",
		Scale = 0.5,
		Pos = Vector(-5, -15, 40),
		Ang = Angle( 0, 180, -10),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-- FOCKING PUTER MATE
    {
		Model = "models/pringle/props/laptopstands/laptopstand2.mdl" ,
		Scale = 0.3, 
		Pos = Vector(6, 12, 37.2), 
		Ang = Angle( 0, 180, -2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/anm_toughbook/anm_toughbook55.mdl",
		Scale = 1.15,
		Pos = Vector(6, 12, 37.5),
		Ang = Angle( 22, -135, -1.5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[3] = "rin/pepd/laptop_screen"}
	},
	-- CONSOLE
	{
        Model = "models/gandhi/props/radio.mdl",
        Scale = .36,
        Pos = Vector(0, 12.90, 27.75),
        Ang = Angle( -163, -90, 0),
        RenderGroup = RENDERGROUP_OPAQUE,
        RenderMode = RENDERMODE_NONE,
    },
    -- CONTROLLER
    {
		Model = "models/tdmcars/emergency/equipment/whelen_295slsa6.mdl",
		Scale = 1,
		Pos = Vector(0, 4.5, 24),
		Ang = Angle( 20, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	}, 
	-- EXTERIOR PROPS --
	{
		Model = "models/sentry/props/whelensa315p_mountb.mdl",
		Scale = .8,
		Pos = Vector(0, 107.4, 28.5),
		Ang = Angle( 0, 0, 0)
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = .96,
		Pos = Vector(0, -123.5, 35.8),
		Ang = Angle( -12, -90, 0),
		SubMaterials = {[0] = "rh&lr/nypepd/props/plate_rear"}
	},
	{
		Model = "models/japanplate/licenseplate.mdl",
		Scale = .96,  
		Pos = Vector(0, 117.79, 18.3),
		Ang = Angle( 6.4, 90, 0),     
		SubMaterials = {[0] = "rh&lr/nypepd/props/plate_front"}
	},
	-- ANTENNAS --
	{
		Model = "models/sentry/antenna4.mdl",
		Scale = Vector(1.4, 1.4, 1),
		Pos = Vector(0, -4, 67.2),
		Ang = Angle( 0, 0, -5)
	},
	{
		Model = "models/sentry/antenna1.mdl",
		Scale = 1,
		Pos = Vector(-20, -30, 66.5),
		Ang = Angle( -6, 0, 2)
	},
	{
		Model = "models/sentry/antenna1.mdl",
		Scale = 1,
		Pos = Vector(20, -30, 66.5),
		Ang = Angle( 6, 0, 2)
	},
	-- WHELEN 500 MOUNTS --
	{
		Model = "models/hunter/tubes/tube1x1x2.mdl",
		Scale = Vector(.025, .025, .0675),
		Pos = Vector(-22, -73.5, 44.6),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Material = "sentry/cvpi_hd/black"
	},
	{
		Model = "models/hunter/tubes/tube1x1x2.mdl",
		Scale = Vector(.025, .025, .0675),
		Pos = Vector(22, -73.5, 44.6),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Material = "sentry/cvpi_hd/black"
	},
	-- MIDDLE MODULE GLASS SEPERATORS
	-- FRONT
	-- Long Part
	{
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.285),
		Pos = Vector(0, -13.681, 70.475),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	},
	-- Top Part
	{
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.085),
		Pos = Vector(0, -14.15, 72.28),
		Ang = Angle( 0, 0, 72.93),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	},
	-- Bottom Part
	{
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.085),
		Pos = Vector(0, -14.15, 68.68), 
		Ang = Angle( 0, 0, -72.93),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	},
	-- REAR
	-- Long Part
	{
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.285),
		Pos = Vector(0, -26.27, 70.475),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	},
	-- Top Part  
	{ 
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.085),
		Pos = Vector(0, -26.27+0.469, 72.28),
		Ang = Angle( 0, 0, -72.93),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	},
	-- Bottom Part
	{
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.02575, 0.006, 0.085),
		Pos = Vector(0, -26.27+0.469, 68.68),
		Ang = Angle( 0, 0, 72.93),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "sentry/cvpi_hd/black"}
	} 
} 

EMV.Auto = {
	-- LIGHTBAR --
	{
		ID = "NYPEPD Whelen Edge 9000",
		Scale = 0.939,        
		Pos = Vector( 0, -20, 66 ),
		Ang = Angle( 0, -90, 0 )
	},
	-- TA --
	{
		ID = "NYPEPD Whelen 500 TA",
		Scale = 1,        
		Pos = Vector( 0, -72.6, 50.9 ),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
	},
	-- GRILLE LIGHTS --
	{
		ID = "NYPEPD Koito Flasher",
		Scale = .8,
		Pos = Vector( 12.5, 106.25, 29.5 ),
		Ang = Angle( 0, -5, 0 ),
		Phase = "A",
		SubMaterials = {[0] = "sentry/props/koitoflasher/plastic_r"}
	},
	{
		ID = "NYPEPD Koito Flasher",
		Scale = .8,
		Pos = Vector( -12.5, 106.25, 29.5 ),
		Ang = Angle( 0, 5, 0 ),
		Phase = "C",
	},
	-- FLASHERS --
	{
		ID = "NYPEPD CVPI Flashers",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ), 
		Ang = Angle( 0, 0, 0),
		Phase = "10"
	}
}

EMV.Sequences = {
	Sequences = {
		{ Name = "SCENE", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "RESPONSE", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "FLASH", Stage = "CA", Components = {}, Disconnect = {} },
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( -15.63, -14.89, 70.45 ), Angle( 0, 90, 0 ), "takedown_edge" },
				{ Vector( 15.63, -14.89, 70.45 ), Angle( 0, 90, 0 ), "takedown_edge" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "alley-left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( -27.72, -19.99, 70.45 ), Angle( 0, 180, 0 ), "takedown_edge" },
			},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Icon = "alley-right",
			Stage = "R",     
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				-- LIGHTBAR --
				{ Vector( 27.72, -19.99, 70.45 ), Angle( 0, 0, 0 ), "takedown_edge" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["takedown_edge"] = {
		Color = Color(230,220,190,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 100,
		Distance = 900,
	}
}
 
local V = { 
	Name = VehicleName, 
	Class = "prop_vehicle_jeep", 
	Category = "RH&LR Port Emma Police Department",
	Author = "RH&LR",
	Model = "models/sentry/cvpi_hd.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/cvpi_hd.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", "rh&lr_nypepd_cvpi10", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end