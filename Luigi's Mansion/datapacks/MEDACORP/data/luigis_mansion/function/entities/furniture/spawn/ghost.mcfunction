summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureGhostLeft
scoreboard players operation #temp2 Time = @s FurnitureGhostUp
scoreboard players operation #temp3 Time = @s FurnitureGhostForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
tag @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,tag=empty_marker] add spawn_2
tag @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture] add spawn
tag @e[distance=..0.1,tag=ghost,tag=vacuumable,tag=!visible] add spawn
execute as @e[distance=..0.1,tag=ghost,tag=spawn] positioned as @e[tag=temp,limit=1] run teleport @s ~ ~ ~
kill @e[tag=temp]