--Staff Announcement--
--By: Necro--
--V1.0--

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
    if sm[1] == "/amsg" then
        --if IsPlayerAceAllowed(source, "staffcode") then
           CancelEvent()
           TriggerClientEvent('chatMessage', -1, "^1 \n STAFF ANNOUNCEMENT \n ^3" .. string.sub(msg,7), { 255, 255, 255 })
        --else
           --TriggerClientEvent('chatMessage', source, "Staff", {200,0,0} , "Silly civilian, you are not staff.")    
      
        --end
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
