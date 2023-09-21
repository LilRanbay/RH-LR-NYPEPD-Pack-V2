AddCSLuaFile()
 
local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
 
local name = "NYPEPD Whelen M9"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/noble/whelen_m9/whelen_m9.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 2
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
    [1] = "RED",
    [2] = "RED"
}
 
COMPONENT.Meta = {
    whelen_m9 = {
        AngleOffset = 0,
        W = 5,
        H = 5,
        Sprite = "sprites/emv/emv_whelen_m9",
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = -90,
		WMult = .5,
		Scale = .3,
		EmitArray = {
			Vector( .7, 0, 0 ),
			Vector( .25, 0, 0 ),
			Vector( -.7, 0, 0 ),
			Vector( -.25, 0, 0 ),
		}
    }
}
 
COMPONENT.Positions = {
    [1] = { Vector( -14.2, 2.18, 2.65 ), Angle( 0, -5, 0 ), "whelen_m9" },
    [2] = { Vector( -11.9, 2.18, 2.65 ), Angle( -180, 5, 0 ), "whelen_m9" },

    [3] = { Vector( -14.2, 2.18, 1.35 ), Angle( 0, -5, 0 ), "whelen_m9" },
    [4] = { Vector( -11.9, 2.18, 1.35 ), Angle( -180, 5, 0 ), "whelen_m9" },
}
 
COMPONENT.Sections = {
    ["auto_whelen_m9"] = {
        [1] = { 
            { 1, "_1"}, { 2, "_1"}, { 3, "_1"}, { 4, "_1"}
        },
        [2] = { 
            { 1, "_1"}, { 2, "_1"}
        },
        [3] = { 
            { 3, "_2"}, { 4, "_2"}
        },
        [4] = { 
            { 1, "_1"}, { 3, "_1"}, { 2, "_2"}, { 4, "_2"}
        }
    },
}
 
COMPONENT.Patterns = {
    ["auto_whelen_m9"] = {
        ["code6"] = { 1 },
		
		["code6A"] = { 0 },
		["code6B"] = { 0 },
		["code6C"] = { 0 },
		["code6D"] = { 0 },
		["code6SPLITA"] = { 0 },
		["code6SPLITB"] = { 0 },
		["code6SPLITC"] = { 0 },
		["code6SPLITD"] = { 0 },
		
		["code3"] = { 1 },
		
		["code3A"] = { 1,0,1,1,1,0,0,0,0,0 },
		["code3B"] = { 0,0,0,0,0,1,0,1,1,1 },
		["code3C"] = { 0,1,0,1,1,1,0,0,0,0 },
		["code3D"] = { 1,0,0,0,0,0,1,0,1,1 },
		["code3SPLITA"] = { 2,0,2,2,2,3,0,3,3,3 },
		["code3SPLITB"] = { 3,0,3,3,3,2,0,2,2,2 },
		["code3SPLITC"] = { 2,3,2,1,3,0,0,0,0,0 },
		["code3SPLITD"] = { 0,0,0,0,0,2,3,2,1,3 },
    },
}
 
COMPONENT.Modes = {
    Primary = {
		M1 = {
            ["auto_whelen_m9"] = "code6",
        },
        M3 = {
            ["auto_whelen_m9"] = "code3",
        },
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        }
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )