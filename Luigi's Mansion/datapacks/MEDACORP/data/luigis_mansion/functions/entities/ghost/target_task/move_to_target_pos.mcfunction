scoreboard players set @s TargetTime 0
summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
data modify entity @e[tag=target_pos,limit=1] Pos set from entity @s data.target_pos
execute facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!reached_target] run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 run teleport @s ~ ~0.1 ~
tag @s remove reached_target
execute if entity @e[tag=target_pos,limit=1,distance=..0.7] run tag @s add reached_target
kill @e[tag=target_pos,limit=1]
scoreboard players set @s[tag=reached_target] TargetTask 0