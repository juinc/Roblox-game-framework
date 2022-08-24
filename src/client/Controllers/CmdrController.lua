--//SERVICES
local ReplicatedStorage = game:GetService('ReplicatedStorage')
--//MODULES
local Knit = require(ReplicatedStorage.Packages.Knit)
--//VARIABLES
local CmdrController = Knit.CreateController { Name = "CmdrController" }

--//MAIN CODE
function CmdrController:KnitStart()
    local Cmdr = require(ReplicatedStorage:WaitForChild("CmdrClient"))
    
    Cmdr:SetActivationKeys({ Enum.KeyCode.F2 })
end


function CmdrController:KnitInit()
    
end


return CmdrController
