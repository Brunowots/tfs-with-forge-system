local hirelingSave = GlobalEvent("hirelingSave")
function hirelingSave.onShutdown()
	Spdlog.info("Saving Hirelings")
	SaveHirelings()
	return true
end
hirelingSave:register()
 
-- precisa nao, eu estava falando do webHook que tem memory leak