local actor, super = Class(Actor, "dryha")

function actor:init()
    super.init(self)
    -- Display name (optional)
    self.name = "/home/dryha"

    -- Width and height for this actor, used to determine its center
    self.width = 37
    self.height = 36

    -- Hitbox for this actor in the overworld (optional, uses width and height by default)
    --self.hitbox = {2, 26, 27, 10}

    -- A table that defines where the Soul should be placed on this actor if they are a player.
    -- First value is x, second value is y.
    self.soul_offset = {10, 24}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {0, 1, 1}

    -- Path to this actor's sprites (defaults to "")
    self.path = "npcs/dryha"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = ""

    -- Sound to play when this actor speaks (optional)
    self.voice = nil
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false
end

return actor
