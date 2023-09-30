AddCSLuaFile()   

local VehicleName = "2011 Ford Crown Victoria PEPD [NY] [RH&LR]"

local EMV = {}

local A = "AMBER" 
local R = "RED"
local G = "GREEN"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

EMV.Siren = "lr_w_epsilon"
EMV.Skin = "rh&lr/nypepd/cvpi10/cvpi_patrol"
EMV.Color = Color(0,29,111) 

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
	{ 2, 4 }, -- grille  
	{ 3, 1 }, -- hubcaps
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
	-- FREEDOM REAR TA SEPERATOR
	{ 
		Model = "models/hunter/blocks/cube025x025x025.mdl",
		Scale = Vector(0.0175, 0.004, 3.15),
		Pos = Vector(0, -27.590, 70.6525),
		Ang = Angle( 90, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		SubMaterials = {[0] = "models/supermighty/photon/liberty_refreshed/black"}
	}
} 

EMV.Auto = {
	-- LIGHTBAR --
	{
		ID = "NYPEPD Whelen Freedom",
		Scale = 0.896,
		Pos = Vector( 0, -20, 70.6 ),
		Ang = Angle( 0 , 90, 0 )
	},
	-- GRILLE IONS --
	{ 
		ID = "NYPEPD Whelen Ion",
		Scale = 1, 
		Pos = Vector(-13, 108.3, 32.6),  
		Ang = Angle( -4, 5, 0),
		Phase = "C"
	},
	{ 
		ID = "NYPEPD Whelen Ion",    
		Scale = 1,
		Pos = Vector(13, 108.3, 32.6),  
		Ang = Angle( 4, -5, 0),
		Phase = "A"
	},
	-- CV INTERSECTORS --
	{
		ID = "NYPEPD SoundOff Intersector CVPI",
		Scale = Vector(.35, .35, 1),
		Pos = Vector(35.65, 103.55, 28.1), 
		Ang = Angle( 180, -40, 0),
		Color1 = "WHITE",
		Phase = "B",
		RenderGroup = RENDERGROUP_OPAQUE,        
		RenderMode = RENDERMODE_NONE, 
	},
	{
		ID = "NYPEPD SoundOff Intersector CVPI",
		Scale = Vector(.35, .35, 1),
		Pos = Vector(-35.65, 103.55, 28.1),
		Ang = Angle( 180, 40, 0),
		Color1 = "WHITE",
		Phase = "A",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE, 
	},
	-- FLASHERS --
	{
		ID = "NYPEPD CVPI Flashers",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ), 
		Ang = Angle( 0, 0, 0),
		Color1 = "WHITE",
		Color2 = "WHITE",
		Phase = "11"
	},
	{
		ID = "NYPEPD CVPI Tail Flashers",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ), 
		Ang = Angle( 0, 90, 0),
		Phase = "11"
	}
}

EMV.Sequences = {
	Sequences = {
		{ Name = "SCENE", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "RESPONSE", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
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
				{ Vector( 14.6, -12.76, 70.47 ), Angle( 0, 90, 0 ), "freedom_tri" },
				{ Vector( -14.6, -12.76, 70.47 ), Angle( 0, 90, 0 ), "freedom_tri" },
				{ Vector( 17.01, -12.76, 70.47 ), Angle( 0, 90, 0 ), "freedom_tri" },
				{ Vector( -17.01, -12.76, 70.47 ), Angle( 0, 90, 0 ), "freedom_tri" },
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
				{ Vector( -28.81, -20.01, 69.75 ), Angle(0, 180, 0 ), "freedom_tri" },
				{ Vector( -28.81, -20.01, 71.45 ), Angle(0, 180, 0 ), "freedom_tri" },
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
				{ Vector( 28.81, -20.01, 69.75 ), Angle(0, 0, 0 ), "freedom_tri" },
				{ Vector( 28.81, -20.01, 71.45 ), Angle(0, 0, 0 ), "freedom_tri" },
			},
			Disconnect = {}    
		},
	}
}

EMV.Lamps = {
	["freedom_tri"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 800,
	},
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
list.Set( "Vehicles", "rh&lr_nypepd_cvpi11", V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end