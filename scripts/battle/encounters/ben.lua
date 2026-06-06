local Ben, super = Class(Encounter)

function Ben:init()
    super.init(self)
    Game.music:stop("d")
    self.text = "* You see what I mean by shit mod?"
    self.music = "havanagila"
    self.background = true
    self:addEnemy("ben")
end

return Ben
