tag @e[tag=same_room,tag=luigi,scores={Health=1..}] add potential_target

execute store result score #temp ID if data entity @s data.target run data get entity @s data.target
execute as @e[tag=potential_target] if score @s ID = #temp ID run tag @s add target
execute unless entity @e[tag=target,limit=1] run data remove entity @s data.target
scoreboard players reset #temp ID

execute unless data entity @s data.target run function luigis_mansion:entities/ghost/set_random_target

scoreboard players operation #temp Move = @s Move
execute unless entity @s[scores={ActionTime=0..}] run scoreboard players add @s ActionTime 0
execute unless entity @s[scores={TargetTask=0..}] run scoreboard players set @s TargetTask 0