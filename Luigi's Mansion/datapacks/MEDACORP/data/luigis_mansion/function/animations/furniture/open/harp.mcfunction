scoreboard players add @s ActionTime 1
scoreboard players set @s[tag=!play_music] ActionTime 7
tag @s[tag=!play_music] add stop_music
scoreboard players add @s FurnitureNoteTime 1
execute store result score #temp Time run data get entity @s equipment.head.components."minecraft:custom_model_data".floats[0]
execute if entity @s[scores={ActionTime=1..3}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=4..6}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players reset @s[scores={ActionTime=6..},tag=stop_music] FurnitureNoteTime
execute if entity @s[scores={FurnitureNoteTime=1}] run particle minecraft:note ^ ^2 ^ 0.625 0 0 1 0 normal @a[tag=same_room]
tag @s[scores={ActionTime=6..},tag=stop_music] remove open
tag @s[scores={ActionTime=6..},tag=stop_music] remove stop_music
scoreboard players set @s[scores={ActionTime=6..}] ActionTime 0
scoreboard players reset @s[scores={FurnitureNoteTime=15}] FurnitureNoteTime