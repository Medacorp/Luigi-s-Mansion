scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=2..5}] AnimationRotationX 250
scoreboard players remove @s[scores={AnimationProgress=7..10}] AnimationRotationX 250
execute if entity @s[tag=held_item,tag=poltergust_grabbed] unless data entity @s item.components."minecraft:custom_data".is_nozzle run data modify entity @s item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[tag=held_item,tag=!poltergust_grabbed] if data entity @s item.components."minecraft:custom_data".is_nozzle run data remove entity @s item
scoreboard players add @s[scores={AnimationProgress=10}] AnimationProgress 0