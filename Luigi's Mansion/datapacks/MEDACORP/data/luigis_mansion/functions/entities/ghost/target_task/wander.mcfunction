scoreboard players add @s TargetTime 1
scoreboard players set @s[scores={TargetTime=61..}] TargetTime 1
execute if data entity @s data.target_pos run summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
execute if data entity @s data.target_pos run data modify entity @e[tag=target_pos,limit=1] Pos set from entity @s data.target_pos
execute if data entity @s data.target_pos facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if data entity @s data.target_pos at @s facing entity @e[tag=target_pos,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 run scoreboard players set @s TargetTime 60
execute unless data entity @s data.target_pos run scoreboard players set @s TargetTime 60
execute at @s at @e[tag=target_pos,distance=..1] run scoreboard players set @s TargetTime 60
execute if entity @s[scores={TargetTime=60}] if entity @a[tag=potential_target,distance=..10] run scoreboard players set @s TargetTask 0
execute at @s[scores={TargetTime=60,TargetTask=4}] run function luigis_mansion:entities/ghost/target_task/get_new_wander_target
kill @e[tag=target_pos,limit=1]