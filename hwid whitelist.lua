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
end
local hwidtable1 = {}
local hwidtable2 = {
    "07fa932704e684c3fbb6b638ab09d3d5bc9f6ae9ac631baf7e00596fed416d8613a8b455d35825774802b5a848272d419f892088f5eca78f253f6c5644a51f3a"; --Wing#8610--
    "D8903A045BF44D107EB050FCA1BA2C401004"; --Error.#7073
    "d071eeb5ddeb44dd032bec0cf15bdc81b1200a53d1dca62e6391d8b54ab8c061eaaf148cd4a405bc5ff5e7402c766a31218405bff5373b0b13495baba829c70d"; --swag man#5009
    "7890BA047B7ACF8004DEED8497A0C100AC72"; --attyl_#2067
    9efa60dc92effc06decbda8a005b75d2c88e0101faead34b22d0425d616d0da7be5cbd65e65886b82edf3caf674a9321f5e6ec1ef1bb8c9269092bfde13c1e3e; --SillyDev#5682
}
return {
    table1check = function()
        if #hwidtable1 == 0 and #hwidtable2 == 0 then
            hwidkick()
        end
        if table.find(hwidtable1, hwid) or table.find(hwidtable2, hwid) then
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
}
