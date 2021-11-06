att.PrintName = "Trijicon ACOG (4x)"
att.Icon = Material("entities/att/arccw_uc_tp_operator.png", "mips smooth")
att.Description = "Medium range combat scope for improved precision at longer ranges."

att.SortOrder = 6

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Neutrals = {"ud.bus"}

att.AutoStats = true
att.Slot = {"optic", "ud_optic", "ud_acog"}

att.Model = "models/weapons/arccw/atts/ud_acog.mdl"
att.ModelOffset = Vector(0, 0, 0)
att.OffsetAng = Angle(0, 0, 0)

att.AdditionalSights = {
    {
        Pos = Vector(0, 9, -1.3),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        IgnoreExtra = true,
        CrosshairInSights = false,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/uc_acog_reticle.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 9.5,
            HolosightPiece = "models/weapons/arccw/atts/ud_acog_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = 4,
            Colorable = true,
        },
    },
    {
        Pos = Vector(0, 11, -2.35),
        Ang = Angle(-2, 0, 0),
        Magnification = 1.1,
        IgnoreExtra = true,
        HolosightData = {
            Holosight = false,
        },
    },
}

att.Colorable = true
att.Mult_SightTime = 1.1
att.HolosightPiece = "models/weapons/arccw/atts/ud_acog_hsp.mdl"