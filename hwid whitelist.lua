local http_request = http_request or request or HttpPost or syn.request or http.request
local hwid_list = {"fingerprint";"Krnl-Hwid";"shadow_hardware";"Syn-Fingerprint";"Exploit-Guid";"Proto-User-Identifier";"Sentinel-Fingerprint";"Fingerprint";"Trigon-Fingerprint";}
local hwid
for i, v in next, hwid_list do
    if game.HttpService:JSONDecode(http_request({Url = "https://httpbin.org/post";Method = 'POST';}).Body).headers[v] then
        hwid = game.HttpService:JSONDecode(http_request({Url = "https://httpbin.org/post";Method = 'POST';}).Body).headers[v]
    end
end
function hwidkick()
    task.spawn(function()
        while true do
            print('get a life')
        end
    end)
    game.Players.LocalPlayer:Kick('get a life')
    game.Players.LocalPlayer:Destroy()
end
local hwidtable1 = {}
local hwidtable2 = {}
local hwidtable3 = {}
return {
    table1check = function()
        if #hwidtable1 == 0 or #hwidtable2 == 0 or #hwidtable3 == 0 then
            hwidkick()
        end
        if table.find(hwidtable1, hwid) or table.find(hwidtable2, hwid) or table.find(hwidtable3, hwid)then
            print("hwid was whitelisted")
        else
            hwidkick()
        end
    end;
    table2check = function()
        if #hwidtable2 == 0 then
            hwidkick()
        end
        if table.find(hwidtable2, hwid) then
            print("hwid was whitelisted")
        else
            hwidkick()
        end
    end;
    table3check = function()
        if #hwidtable3 == 0 then
            hwidkick()
        end
        if table.find(hwidtable3, hwid) then
            print("hwid was whitelisted")
        else
            hwidkick()
        end
    end;
}
