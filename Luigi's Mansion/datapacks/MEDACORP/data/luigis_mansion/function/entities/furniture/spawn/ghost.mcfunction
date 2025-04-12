summon minecraft:marker ~ ~ ~ {Tags:["temp","to_spawn_location","remove_from_existence"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
tag @s add this_furniture
execute as @e[tag=temp] store result entity @s Pos[1] double 0.1 run scoreboard players get @e[tag=this_furniture,limit=1] PositionY
tag @s remove this_furniture
scoreboard players operation #temp Time = @s FurnitureGhostLeft
scoreboard players operation #temp2 Time = @s FurnitureGhostUp
scoreboard players operation #temp3 Time = @s FurnitureGhostForward
execute as @e[tag=temp,tag=to_spawn_location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] run tag @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture,tag=empty_marker] add spawn_2
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] run tag @e[distance=..0.1,tag=ghost,tag=hiding_in_furniture] add spawn
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] run tag @e[distance=..0.1,tag=ghost,tag=vacuumable,tag=!visible] add spawn
execute positioned as @e[tag=temp,tag=!to_spawn_location,limit=1] as @e[distance=..0.1,tag=ghost,tag=spawn] positioned as @e[tag=temp,tag=to_spawn_location,limit=1] run teleport @s ~ ~ ~
kill @e[tag=temp]