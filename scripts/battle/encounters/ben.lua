local Ben, super = Class(Encounter)

function Ben:init()
    super.init(self)
    Game.music:stop("d")
    self.text = "* You see what I mean by shit mod?"
    self.music = "havanagila"
    self.background = true
    self:addEnemy("ben")
    function Ben:onBattleStart(action)
        Game:getPartyMember("ralsei"):addSpell("snowgrave")
        super.onBattleStart(self, action)
    end
    function Ben:onBattleEnd(action)
        Game:getPartyMember("ralsei"):removeSpell("snowgrave")
        super.onBattleEnd(self, action)
    end
end

return Ben
