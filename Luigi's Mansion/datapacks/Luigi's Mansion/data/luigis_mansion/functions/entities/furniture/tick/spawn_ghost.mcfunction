summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureForward
scoreboard players operation #temp2 Time = @s FurnitureUp
execute unless score #temp Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_forward
execute unless score #temp2 Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_up
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost] add spawn
execute as @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost] store result score @s HomeX run data get entity @e[tag=location,limit=1] Pos[0] 100
execute as @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost] store result score @s HomeY run data get entity @e[tag=location,limit=1] Pos[1] 100
execute as @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost] store result score @s HomeZ run data get entity @e[tag=location,limit=1] Pos[2] 100
execute as @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost] positioned as @e[tag=location,limit=1] run teleport @s ~ ~ ~
kill @e[tag=location,limit=1]