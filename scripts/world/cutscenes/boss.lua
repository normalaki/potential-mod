return {
    scene = function(cutscene, event)
    cutscene:text("* You feel like something bad is coming up...")
    local susie = cutscene:getCharacter("susie")
    if susie then
        local ralsei = cutscene:getCharacter("ralsei")
        cutscene:wait(cutscene:walkTo("susie", "susie_boss", 0.5))
        --cutscene:setSpeaker(susie)
        Game.music:play("d")
        cutscene:text("* Who is th-that?", "shock", susie)
        --cutscene:setSpeaker(ralsei)
        cutscene:wait(cutscene:walkTo("ralsei", "ralsei_boss", 0.5))
        cutscene:detachCamera()
        cutscene:panTo(Game.world.camera.x + 300, Game.world.camera.y + 0, 0.5)
        Game:setFlag("boss1_enter", true)
        --cutscene:wait(cutscene:walkTo("kris", "kris_boss", 0.5))
        cutscene:text("* In the year 2026,[wait:5] a virus called [color:red]Hantavirus[color:reset] will emerge.", "blush_smile", ralsei)
        cutscene:text("* It will start on a cruise ship and cause massive panic.", "blush_smile", ralsei)
        cutscene:text("* But of course, it will be forgotten a few days later.", "blush_smile", ralsei)
        cutscene:text("* ...", "nervous_side", susie)
        cutscene:text("* Ralsei what the [color:red]FUCK[color:reset] are you on about!!!", "teeth_b", susie)
        cutscene:attachCamera()
    end

    end
}
