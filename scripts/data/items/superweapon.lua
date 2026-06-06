local item, super  = Class(Item, "superweapon")

function item:init()
    super.init(self)

    self.name = "SW"
    self.use_name = nil

    self.type = "weapon"
    self.icon = nil
    self.light = false

    self.effect = "It kills quite well."
    self.shop = "Super Weapon"
    self.description = "This item is used for debug purposes"
    self.check = "Debug weapon."
    self.bonuses = {
        attack = 450,
        defense = 6,
        magic = 8
    }
    self.bonus_name = nil
    self.bonus_icon = nil
    self.price = 0
    self.can_sell = false
    self.target = "enemy"
    self.usable_in = "all"
    self.can_equip = {
        ralsei = true,
        kris = true,
        susie = true
    }
    self.reactions = {
        ralsei = "thank you",
        susie = "fuck you",
        kris = "cute cute cute cutte youre so cute handsome i love you so muuuch i love you muwaaaah"
    }
end

return item
