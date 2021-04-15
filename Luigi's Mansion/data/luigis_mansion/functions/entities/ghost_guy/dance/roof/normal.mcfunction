execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
execute if entity @s[scores={PathStep=..580}] positioned 699.0 131 8.0 facing entity @s feet rotated ~5 0 positioned ^ ^ ^4.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["target"],Duration:1}
execute if entity @s[scores={PathStep=581..}] positioned 699.0 131 8.0 facing entity @s feet rotated ~-5 0 positioned ^ ^ ^4.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["target"],Duration:1}
scoreboard players set #temp Move 1
execute facing entity @e[tag=target,limit=1] feet as @e[tag=partner,limit=1] positioned as @s run function luigis_mansion:entities/ghost/move_forward
scoreboard players set #temp Move 1
execute facing entity @e[tag=target,limit=1] feet run function luigis_mansion:entities/ghost/move_forward
kill @e[tag=target,limit=1,type=minecraft:area_effect_cloud]
scoreboard players add @s PathStep 1
scoreboard players set @s[scores={PathStep=1160}] PathStep 1
scoreboard players operation @e[tag=partner,limit=1] PathStep = @s PathStep