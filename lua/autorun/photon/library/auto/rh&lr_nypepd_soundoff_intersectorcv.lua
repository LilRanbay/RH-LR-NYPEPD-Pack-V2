AddCSLuaFile()

local name = "NYPEPD SoundOff Intersector CVPI"

local COMPONENT = {}

COMPONENT.Base = "NYPEPD SoundOff Intersector"

COMPONENT.Meta = {
	soundoff_cir = {
		AngleOffset = -90,
		W = .7,
		H = .7,
		Sprite = "sprites/emv/circular_src",
		WMult = 1.25,
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

EMVU:AddAutoComponent( COMPONENT, name )
