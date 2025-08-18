
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MaidModule = require(ReplicatedStorage.Shared.Libraries.Maid)

local Weapon = {}
Weapon.__index = Weapon

export type WeaponType = typeof(setmetatable({} :: {
    _MAID: MaidModule.Maid,

    PLAYER: Player,
    MODEL: string,
    TOOL: Tool
}, Weapon))

function Weapon.new(player: Player): WeaponType
    local self = setmetatable({
        _MAID = MaidModule.new(),
        
    }, Weapon)
    
    return self
end

function Weapon:Destroy()
    self._MAID:Destroy()
    for index, _ in pairs(self) do
        self[index] = nil
    end
end

return Weapon
