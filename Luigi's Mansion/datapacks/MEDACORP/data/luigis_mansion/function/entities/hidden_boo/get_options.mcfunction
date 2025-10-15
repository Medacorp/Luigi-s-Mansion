scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
execute as @e[tag=furniture,tag=same_room,tag=can_hide_boo] if score @s PositionX = #temp PositionX if score @s PositionY = #temp PositionY if score @s PositionZ = #temp PositionZ run tag @s remove hide_option

#todelete - old furniture
kill @e[type=minecraft:marker,tag=choice,distance=..0.1,limit=1]
#/todelete