--//SERVICES
local ReplicatedStorage   = game:GetService('ReplicatedStorage')
local CollectionService   = game:GetService("CollectionService")
--//MODULES
local Knit = require(ReplicatedStorage.Packages.Knit)
--//VARIABLES
local OvertureService = Knit.CreateService {
    Name = "OvertureService",
    Client = {},
}

--//MAIN CODE
local function BindToTag(tag,Function)
    CollectionService:GetInstanceAddedSignal(tag):Connect(Function)

    for i,v in pairs(CollectionService:GetTagged(tag)) do
        Function(v)
    end
end

function OvertureService:KnitStart()

end

function OvertureService:KnitInit()
    BindToTag("Preload",function(obj)
        task.spawn(function() require(obj) end)
    end)

    require(ReplicatedStorage.Packages.Overture)
end

return OvertureService