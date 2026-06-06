local actor, super = Class(Actor, "excuse_me_pan")

function actor:init()
    super.init(self)
    self.name = "Excuse me pan"
    self.width = 32
    self.height = 27
    --self.hitbox = {0, 25, 19, 14}
    self.soul_offset = {10, 24}
    self.color = {0, 1, 1}
    self.path = "npcs/excuse_me_pan"
    self.default = ""
    self.voice = nil
    self.portrait_path = nil
    self.portrait_offset = nil
    self.can_blush = false
end

return actor
