
local Observers = require(game.ReplicatedStorage.Shared.Libraries.Observers)
local MaidModule = require(game.ReplicatedStorage.Shared.Libraries.Maid)

local Maid: MaidModule.Maid = MaidModule.new()


local function OnCharacterAdded(player: Player, character: Model)
    
end

Observers.observeCharacter(OnCharacterAdded)

