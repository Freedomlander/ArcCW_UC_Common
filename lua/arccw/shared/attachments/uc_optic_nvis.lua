att.PrintName = "N-Vision HALO-LR Thermal Scope (3.5-6.5x)"
att.AbbrevName = "HALO-LR (3.5-6.5x)"
att.Icon = nil
att.Description = "Cutting-edge night vision optic that highlights targets via infrared imaging. The complicated electronics result in a massive weight gain for the base weapon."

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
    "autostat.thermal"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Double-tap +USE to toggle imaging modes"
}
att.AutoStats = true
att.Slot = {"optic"}

att.Model = "models/weapons/arccw/atts/uc_nvis.mdl"
att.ModelOffset = Vector(0, 0, 0.18)


att.AdditionalSights = {
    {
        Pos = Vector(-0.035, 8, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ScopeMagnificationMin = 3.5,
        ScopeMagnificationMax = 6.5,
        ZoomLevels = 3,
        ScopeMagnification = 3.5,
        Thermal = true,
        ThermalScopeColor = Color(255, 255, 255),
        ThermalHighlightColor = Color(255, 255, 255),
        ThermalFullColor = false,
        ThermalScopeSimple = false,
        ThermalNoCC = false,
        ThermalBHOT = false,
        IgnoreExtra = true,
        Contrast = 0.51,
        Brightness = 0.1,
        SpecialScopeFunction = function(screen)
            render.PushRenderTarget(screen)
            
            DrawBloom(0,0.3,5,5,3,0.5,1,1,1)
            DrawSharpen(1,1.65)
            DrawMotionBlur(0.45,1,1/45)

            render.PopRenderTarget()
        end,
    },
    {
        Pos = Vector(-0.035, 8, -1.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ScopeMagnificationMin = 3.5,
        ScopeMagnificationMax = 6.5,
        ZoomLevels = 3,
        ScopeMagnification = 3.5,
        Thermal = true,
        ThermalScopeColor = Color(255, 255, 255),
        ThermalHighlightColor = Color(0, 0, 0),
        ThermalFullColor = false,
        ThermalScopeSimple = false,
        ThermalNoCC = false,
        ThermalBHOT = false,
        IgnoreExtra = true,
        Contrast = 0.7,
        Brightness = 0.5,
        SpecialScopeFunction = function(screen)
            render.PushRenderTarget(screen)
            
            DrawBloom(0, 0.3, 5, 5, 3, 0.5, 1, 1, 1)
            DrawSharpen(1, 1.65)
            DrawMotionBlur(0.45, 1, 1/45)

            render.PopRenderTarget()
        end,
    },
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/uc_nvis_reticle1.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 9.2
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/uc_nvis_hsp.mdl"
att.Colorable = false

att.HolosightBlackbox = true

att.HolosightMagnification = 2.3

att.Mult_SightTime = 1.25
att.Mult_SightedSpeedMult = 0.65
att.Mult_SpeedMult = 0.9
att.Mult_Sway = 1.5

local Ret1 = Material("hud/scopes/uc_nvis_reticle1.png", "mips smooth")
local Ret2 = Material("hud/scopes/uc_nvis_reticle2.png", "mips smooth")

att.HolosightReticle = Ret1

att.ToggleStats = {
    {
        PrintName = "Three Lines Reticle",
        HolosightReticle = Ret1
    },
    {
        PrintName = "Dot Reticle",
        HolosightReticle = Ret2
    },
}