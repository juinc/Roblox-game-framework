local Admins = {
    [169308929] = true
}

return function (registry)
	registry:RegisterHook("BeforeRun", function(context)
		if context.Group == "DefaultAdmin" and not Admins[context.Executor.UserId] then
			return "You don't have permission to run this command"
		end
	end)
end