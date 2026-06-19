scoreboard players add @s ActionTime 1
scoreboard players set @s[tag=!play_music] ActionTime 7
tag @s[tag=!play_music] add stop_music
scoreboard players add @s FurnitureNoteTime 1
execute if entity @s[scores={ActionTime=1..3}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=4..6}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
scoreboard players reset @s[scores={ActionTime=6..},tag=stop_music] FurnitureNoteTime
execute if entity @s[scores={FurnitureNoteTime=1}] run summon minecraft:marker ^ ^1.75 ^ {Tags:["random_note"]}
execute if entity @s[scores={FurnitureNoteTime=1}] run summon minecraft:marker ^-0.7 ^1.75 ^ {Tags:["random_note"]}
execute if entity @s[scores={FurnitureNoteTime=1}] run summon minecraft:marker ^-0.35 ^1.75 ^ {Tags:["random_note"]}
execute if entity @s[scores={FurnitureNoteTime=1}] run summon minecraft:marker ^0.35 ^1.75 ^ {Tags:["random_note"]}
execute if entity @s[scores={FurnitureNoteTime=1}] run summon minecraft:marker ^0.7 ^1.75 ^ {Tags:["random_note"]}
execute if entity @s[scores={FurnitureNoteTime=1}] positioned as @e[tag=random_note,sort=random,limit=1] run particle minecraft:note ~ ~ ~ 0.75 0 0 1 0 normal @a[tag=same_room]
execute if entity @s[scores={FurnitureNoteTime=1}] run kill @e[tag=random_note]
tag @s[scores={ActionTime=6..},tag=stop_music] remove open
tag @s[scores={ActionTime=6..},tag=stop_music] remove stop_music
scoreboard players set @s[scores={ActionTime=6..}] ActionTime 0
scoreboard players reset @s[scores={FurnitureNoteTime=5}] FurnitureNoteTime