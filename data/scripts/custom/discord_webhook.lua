-- Sends Discord webhook special notifications.
-- The URL layout is https://discord.com/api/webhooks/:id/:token
-- Leave empty if you wish to disable.

-- https://discord.com/api/webhooks/999042945967722617/opoSycF4oNeI8JSniFF2lJhHGGyEYBmBftkCdTEE3Sk2gQvLpQv6rwqbCk7Kwp6WELrC
 
--[[
	Example of notification (After you do the config):
	This is going to send a message into your server announcements channel
	local message = blablabla
	local title = test
	Webhook.send(title, message, WEBHOOK_COLOR_WARNING,
                        announcementChannels["serverAnnouncements"])
	Dev Comment: This lib can be used to add special webhook channels
	where you are going to send your messages. Webhook.specialSend was designed
	to be used with countless possibilities.
]]