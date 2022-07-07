local hwidwhitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/theplantman/HWIDS/main/hwid%20whitelist.lua", true))()
task.spawn(function()
    hwidwhitelist.table2check()
end)
