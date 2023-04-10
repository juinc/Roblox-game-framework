--//SERVICES
local ReplicatedStorage   = game:GetService('ReplicatedStorage')
local ServerScriptService = game:GetService("ServerScriptService")
--//MODULES
local Knit = require(ReplicatedStorage.Packages.Knit)
local Cmdr = require(ServerScriptService.Packages.Cmdr)
--//VARIABLES
local CmdrService = Knit.CreateService {
    Name = "CmdrService",
    Client = {},
}

--//MAIN CODE
function CmdrService:KnitStart()
    
end

function CmdrService:KnitInit()
    Cmdr:RegisterDefaultCommands()
    Cmdr:RegisterHooksIn(ServerScriptService.Modules.CmdrHooks)
    Cmdr:RegisterCommandsIn(ServerScriptService.Modules.CmdrCommands)
    Cmdr:RegisterTypesIn(ServerScriptService.Modules.CmdrTypes)
end

return CmdrService