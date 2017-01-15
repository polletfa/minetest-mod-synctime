--[[
  Synchronize game time with real time every time a player joins.
  It requires time_speed = 1 to stay synchronized
]]

print(minetest.get_timeofday())
minetest.set_timeofday(0.7)

minetest.register_on_joinplayer(function(obj)
  minetest.log("action", "[MOD] synctime")
  minetest.log("action", "[MOD] "..os.date("Current system time: %H:%M:%S"))
  hour=os.date("%H")
  min=os.date("%M")
  sec=os.date("%S")
  time=(hour+(min+sec/60)/60)/24
  minetest.log("action", "[MOD] Current game time: "..minetest.get_timeofday())
  minetest.log("action", "[MOD] Set game time to: "..time)
  minetest.set_timeofday(time)
  minetest.log("action", "[MOD] Current game time: "..minetest.get_timeofday())  
end)
