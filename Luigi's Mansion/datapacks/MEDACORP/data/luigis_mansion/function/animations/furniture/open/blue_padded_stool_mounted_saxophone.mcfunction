scoreboard players add @s ActionTime 1
scoreboard players set @s[tag=!play_music] ActionTime 7
tag @s[tag=!play_music] add stop_music
scoreboard players add @s FurnitureNoteTime 1
data modify entity @s[scores={ActionTime=1}] transformation.scale[1] set value 1.01625
data modify entity @s[scores={ActionTime=2}] transformation.scale[1] set value 1.033125
data modify entity @s[scores={ActionTime=3}] transformation.scale[1] set value 1.05
data modify entity @s[scores={ActionTime=4}] transformation.scale[1] set value 1.033125
data modify entity @s[scores={ActionTime=5}] transformation.scale[1] set value 1.01625
data modify entity @s[scores={ActionTime=6}] transformation.scale[1] set value 1
scoreboard players reset @s[scores={ActionTime=6..},tag=stop_music] FurnitureNoteTime
execute if entity @s[scores={FurnitureNoteTime=1}] unless score #mirrored Selected matches 1 run particle minecraft:note ^0.35 ^1.75 ^0.1 0.417 0 0 1 0 normal @a[tag=same_room]
execute if entity @s[scores={FurnitureNoteTime=1}] if score #mirrored Selected matches 1 run particle minecraft:note ^-0.35 ^1.75 ^0.1 0.417 0 0 1 0 normal @a[tag=same_room]
tag @s[scores={ActionTime=6..},tag=stop_music] remove open
tag @s[scores={ActionTime=6..},tag=stop_music] remove stop_music
scoreboard players set @s[scores={ActionTime=6..}] ActionTime 0
scoreboard players reset @s[scores={FurnitureNoteTime=10}] FurnitureNoteTime