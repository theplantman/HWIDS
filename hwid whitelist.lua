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
    end)
end
local hwidtable1 = {}
if #hwidtable == 0 then
    modules.hwidkick()
end
if table.find(hwidtable, hwid) then
    print('wlisted')
else
    modules.hwidkick()
end
