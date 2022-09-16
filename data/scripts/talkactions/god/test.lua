local testTalk = TalkAction("/getdust")

function testTalk.onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end
	
	player:addForgeDust(500)
	player:addForgeCores(10)
	player:addSlivers(10)
	return false
end

testTalk:separator(" ")
testTalk:register()