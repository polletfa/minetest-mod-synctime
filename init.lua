--[[
  Synchronize game time with real time every time a player joins.
  It requires time_speed = 1 to stay synchronized
]]

print(minetest.get_timeofday())
minetest.set_timeofday(0.7)

minetest.register_on_joinplayer(function(obj)
  minetest.log("action", "[MOD]synctime")
  minetest.log("action", "[MOD]synctime -- "..os.date("Current system time: %H:%M:%S"))
  local time=(os.date("%H")+(os.date("%M")+os.date("%S")/60)/60)/24
  minetest.log("action", "[MOD]synctime -- Current game time: "..minetest.get_timeofday())
  minetest.log("action", "[MOD]synctime -- Set game time to: "..time)
  minetest.set_timeofday(time)
  minetest.log("action", "[MOD]synctime -- Current game time: "..minetest.get_timeofday())  
end)
