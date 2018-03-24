 --Police pour le hud--
surface.CreateFont( "police-1", {
    font = "impact", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = 20,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )
surface.CreateFont( "police-2", {
    font = "impact", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    extended = false,
    size = 24,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )


 
--Hyd Evolife--
hook.Add("HUDPaint", "RyxlanderHUD", function()
    --Integration des localPlayer--
    local ply = LocalPlayer()
    local name = LocalPlayer():Name()
    local armor = LocalPlayer():Armor()
    local health = LocalPlayer(): Health()
    local healthSize
    local armorSize
    -- Définition de la taille de la barre de vie
    if health <= 100 then
     healthSize = health * 1.9 + 10
    else
     healthSize = 310
    end
    -- Définition de la taille de la barre de armur
    if armor <= 100 then
     armorSize = armor * 1.9 + 10
    else
     armorSize = 310
    end

    if health >= 0 then
        draw.RoundedBox(3,20, ScrH{} - 60, 250, 25, Color(0, 0, 0, 150))   
        draw.RoundedBox(3,40, ScrH{} - 55, 200, 14, Color(0, 0, 0, 255))   
        draw.RoundedBox(3,40, ScrH() - 55, healthSize, 15, Color(232, 14, 25, 200))
        draw.SimpleText("Vie :"..health, "police-1", 110, ScrH() - 58, Color(255, 255, 255))  
    else

    end
    if armor > 0 then
        draw.RoundedBox(3,272, ScrH{} - 60, 250, 25, Color(0, 0, 0, 150))
        draw.RoundedBox(3,290, ScrH{} - 55, 200, 14, Color(0, 0, 0, 250))
        draw.RoundedBox(3,290, ScrH{} - 55, armorSize, 15, Color(19, 46, 245, 200))
        draw.SimpleText("Armure : "..armor, "police-1", 350, ScrH() - 58, Color(255, 255, 255))
    else

    end

    draw.SimpleText(name, "police-2", 20, ScrH() - 110, Color(255, 255, 255))
    draw.DrawText(BaseWars.NumberFormat(LocalPlayer():GetMoney(), 400, ScrH - 60 - 43, Color(255,255,255)))

end)
 
-- Retirer le HUD de base
hook.Add( "HUDShouldDraw", "DefautHUD", function( name )
    if ( name == "CHudHealth" or name == "CHudBattery" ) then
        return false
        end
end )
surface.CreateFont( "Name", {
    font = "Roboto",
    size = 22,
    weight = 500,
    antialias = true,
} )

