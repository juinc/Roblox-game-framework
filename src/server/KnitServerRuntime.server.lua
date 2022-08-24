--//SERVICES
local ReplicatedStorage = game:GetService("ReplicatedStorage")
--//MODULES
local Knit      = require(ReplicatedStorage.Packages.Knit)
--local Component = require(Knit.Util.Component)
--//MAIN CODE
--Component.Auto(script.Parent.Components)

Knit.ComposeOf = function(parents)
    local Class = {}
    setmetatable(Class,{__index = function(_,key)
        for _,parent in pairs(parents) do
            if parent[key] then
                return parent[key]
            end
        end
    end})

    return Class
end



for _,v in pairs(game:GetService("ServerScriptService").Services:GetChildren()) do
    if v:IsA("ModuleScript") then
        require(v)
    end
end

Knit.Start():catch(warn)