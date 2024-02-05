summon minecraft:marker ~ ~ ~ {Tags:["temp","to_spawn_location","remove_from_existence"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
tag @s add me
execute as @e[tag=temp] store result entity @s Pos[1] double 0.1 run scoreboard players get @e[tag=me,limit=1] PositionY
tag @s remove me
scoreboard players operation #temp Time = @s FurnitureGhostLeft
scoreboard players operation #temp2 Time = @s FurnitureGhostUp
scoreboard players operation #temp3 Time = @s FurnitureGhostForward
execute as @e[tag=temp,tag=to_spawn_location,limit=1] positioned as @s run function luigis_mansion:old_entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] run tag @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] as @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar] positioned as @e[tag=temp,tag=to_spawn_location,limit=1] run teleport @s ~ ~ ~
kill @e[tag=temp]