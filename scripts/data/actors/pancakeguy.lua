local actor, super = Class(Actor, "pancakeguy")

function actor:init()
    super.init(self)
    self.name = "Pancake Guy"
    self.width = 32
    self.height = 32
    self.hitbox = {2, 26, 27, 10}
    self.soul_offset = {10, 24}
    self.color = {0, 1, 1}
    self.path = "npcs/pancakeguy"
    self.default = ""
    self.voice = nil
    self.portrait_path = nil
    self.portrait_offset = nil
    self.can_blush = false
end

return actor
