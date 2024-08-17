data modify entity @s data.target_pos set from entity @e[tag=target,limit=1] Pos
execute store result score #temp Time run data get entity @s data.target_pos[1] 100
execute if entity @s[tag=!flipped_gravity] run scoreboard players add #temp Time 400
execute if entity @s[tag=flipped_gravity] run scoreboard players remove #temp Time 400
execute store result score #temp2 Time run data get entity @s Pos[1] 100
scoreboard players operation #temp2 Time -= #temp Time
execute unless score #temp2 Time matches -100..100 run data modify entity @s data.target_pos set from entity @s Pos
execute unless score #temp2 Time matches -100..100 run tag @s add change_height
execute store result entity @s data.target_pos[1] double 0.01 run scoreboard players get #temp Time
scoreboard players reset #temp2 Time

scoreboard players set @s TargetTime 0
summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
data modify entity @e[tag=target_pos,limit=1] Pos set from entity @s data.target_pos
execute if entity @e[tag=target_pos,distance=..2,limit=1] run tag @s[tag=!change_height] add new_reached_target
execute facing entity @e[tag=target_pos,limit=1] feet run teleport @s[tag=!new_reached_target] ~ ~ ~ ~ ~
execute unless score #mirrored Selected matches 1 run teleport @s[tag=new_reached_target,tag=!reached_target] ~ ~ ~ ~-90 0
execute if score #mirrored Selected matches 1 run teleport @s[tag=new_reached_target,tag=!reached_target] ~ ~ ~ ~90 0
scoreboard players set #temp Time 36
execute unless score #mirrored Selected matches 1 store result storage luigis_mansion:data macro.angle float 0.01 run scoreboard players operation #temp Time *= @s Move
execute if score #mirrored Selected matches 1 store result storage luigis_mansion:data macro.angle float -0.01 run scoreboard players operation #temp Time *= @s Move
scoreboard players reset #temp Time
execute at @s[tag=new_reached_target] run function luigis_mansion:entities/ghost/target_task/circle_above_target_degrees with storage luigis_mansion:data macro
execute at @s run function luigis_mansion:entities/ghost/move_forward
tag @s[tag=new_reached_target] add reached_target
tag @s[tag=!new_reached_target] remove reached_target
tag @s remove new_reached_target
tag @s remove change_height
kill @e[tag=target_pos,limit=1]