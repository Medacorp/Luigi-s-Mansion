execute if data entity @s data.target_pos run summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
execute if data entity @s data.target_pos run data modify entity @e[tag=target_pos,limit=1] Pos set from entity @s data.target_pos
execute if data entity @s data.target_pos facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if data entity @s data.target_pos at @s facing entity @e[tag=target_pos,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 run data remove entity @s data.target_pos
execute at @s at @e[tag=target_pos,distance=..1] run data remove entity @s data.target_pos
execute unless data entity @s data.target_pos run scoreboard players remove @s[scores={TargetTime=1..}] TargetTime 1
execute if entity @s[scores={TargetTime=0}] unless data entity @s data.target_pos run function luigis_mansion:entities/ghost/target_task/go_to_next_path_step
kill @e[tag=target_pos,limit=1]