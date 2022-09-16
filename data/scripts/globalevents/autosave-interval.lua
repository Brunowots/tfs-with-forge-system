local autosaveinterval = GlobalEvent("autosaveinterval")

function autosaveinterval.onThink(interval)
	saveServer()
	SaveHirelings()
	return true
end

autosaveinterval:interval(420000)
autosaveinterval:register()


