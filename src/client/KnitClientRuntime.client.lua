--//SERVICES
local ReplicatedStorage = game:GetService("ReplicatedStorage")
--//MODULES
local Knit      = require(ReplicatedStorage.Packages.Knit)
--local Component = require(Knit.Util.Components)
--//MAIN CODE
--Component.Auto(script.Parent.Components)

Knit.ComposeOf = function(parents)
    local Class = {}
    setmetatable(Class,{__index = function(self,key)
        for _,parent in pairs(parents) do
            if parent[key] then
                return parent[key]
            end
        end
    end})

    return Class
end

for i,v in pairs(game:GetService("StarterPlayer").StarterPlayerScripts.Controllers:GetChildren()) do
    if v:IsA("ModuleScript") then
        require(v)
    end
end

Knit.Start():catch(warn)