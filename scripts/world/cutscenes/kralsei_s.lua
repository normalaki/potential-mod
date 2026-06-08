--IF YOU NOTICE THIS I BEG YOU PLEASE DM ME ON DISCORD I WILL BE SO FUCKING HAPPY
--chk_it
return {
    scene = function(cutscene, event)
        cutscene:wait(cutscene:walkTo("kris", "kris_pos_cut", 0.50, "up"))
        cutscene:wait(cutscene:walkTo("ralsei", "ralsei_pos_cut", 0.50, "down"))
        cutscene:wait(cutscene:fadeOut(1))
        cutscene:wait(1)
        cutscene:text("[voice:ralsei]* [wait:5]Kris...[wait:5] Can I ask you something?")
        local option = cutscene:choicer({"Ya", "Fuh off"})
        if option == 1 then
            cutscene:text("[voice:ralsei]* [wait:10]Do you...\n* [wait:10]like...[wait:5] me?")
            local option2 = cutscene:choicer({"Ya baby", "Ex-fucking-cuse me?"})
            if option2 == 1 then
                cutscene:text("[voice:ralsei]* R-[wait:2] r-[wait:2] r-[wait:10] really?")
                Assets.playSound("unzip")
                cutscene:wait(5)
                Assets.playSound("klas")
                cutscene:wait(3.5)
                Assets.playSound("splat")
                cutscene:wait(2)
                local success, result_text = Game.inventory:tryGiveItem("superweapon")
                cutscene:text(result_text)
            else
                cutscene:text("[voice:ralsei]I really thought...")
            end
        else
            cutscene:text("[voice:ralsei]O- o- ok!")
        end
        cutscene:wait(1)
        cutscene:wait(cutscene:fadeIn(1))
    end
}
