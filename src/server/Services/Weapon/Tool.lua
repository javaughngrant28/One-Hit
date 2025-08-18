
local Tool = Instance.new('Tool')
Tool.RequiresHandle = false

local Folder = Instance.new('Folder')
Folder.Name = 'Animations'
Folder.Parent = Tool

local function CreateTool(): Tool
    return Tool:Clone()
end

return {
    Create = CreateTool
}





