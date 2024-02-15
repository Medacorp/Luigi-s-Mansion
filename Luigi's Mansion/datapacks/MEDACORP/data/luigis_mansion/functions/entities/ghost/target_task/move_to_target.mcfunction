scoreboard players set @s TargetTime 0
data remove entity @s data.target_pos
summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
data modify entity @e[tag=target_pos,limit=1] Pos set from entity @e[tag=target,limit=1,sort=nearest] Pos
execute facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 run teleport @s ~ ~0.1 ~
kill @e[tag=target_pos,limit=1]