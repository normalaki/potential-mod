local Ben, super = Class(EnemyBattler)

function Ben:init()
    super.init(self)
    self.name = "Benjamin Nethenyahu"
    self:setActor("ben")
    self.max_health = 4000
    self.health = 4000
    self.attack = 999
    self.defense = 9
    self.money = 10000
    self.spare_points = 0
    function Ben:setTired(tired) self.tired = false end
    Ben:setTired(false)
    self.disable_tired = true
    self.disable_mercy = true

    self.check = "AT 999 DF 9\n* Takes no mercy."
    self.text = {
        "* He looks like he's about to put you on a top wanted watchlist.",
        "* Aww, what's the problem?\n[wait:5]* Does he have too much hp?",
        "* Let's find a compromise.",
        "* Please dont flame me for this bit :("
    }
    --self.low_health_text = "* A tad bit closer to victory."
    self.waves = {
        "basic",
        "aiming",
        "movingarena"
    }
    self.dialogue = {
        "We've got a list![wait:5]\nWe've got a list!",
        "Why have you come\nhere to disturb me?",
        "I have asked my\nassociates to\nneutralize you.",
        "Oh please,[wait:5]\nyou are a waste\nof time for me.",
        "You can surrender."
    }
    self:registerAct("Beg")
    self:registerAct("Scream and Argue", "", {"susie"})
    function Ben:onAct(battler, name)
        if name == "Beg" then
            self.dialogue_override = "I give no mercy\nto people\nlike you."
            return {
                "* You beg for mercy.",
                "* ... and start crying."
            }
        elseif name == "Scream and Argue" then
            self.dialogue_override = "You are very\nannoying individuals."
            return {
                "* You and Susie start running in circles and screaming.",
                "* It's not working."
            }
        elseif name == "Standard" then
            self.dialogue_override = "I'm not gonna help you."
            if battler.chara.id == "ralsei" then
                return "* Ralsei asked him why he is doing this.[wait:5] He didn't say anything."
            elseif battler.chara.id == "susie" then
                return "* Susie said she is gonna beat the shit out of him. He smirked."
            else
                return "* "..batller.chara:getName().." fucked around with him. He tried to act calm."
            end
        end
    end
    return super.onAct(self, battler, name)
end

return Ben
