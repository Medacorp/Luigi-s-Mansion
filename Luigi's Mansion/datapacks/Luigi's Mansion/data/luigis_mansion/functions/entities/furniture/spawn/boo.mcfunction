summon minecraft:marker ~ ~ ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureForward
scoreboard players operation #temp2 Time = @s FurnitureUp
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
execute as @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar] positioned as @e[tag=location,limit=1] run teleport @s ~ ~ ~
kill @e[tag=location,limit=1]