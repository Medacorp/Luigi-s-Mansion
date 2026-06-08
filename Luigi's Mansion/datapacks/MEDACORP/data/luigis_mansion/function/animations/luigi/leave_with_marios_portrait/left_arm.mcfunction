scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run data modify entity @s[scores={AnimationProgress=1..},tag=held_item] equipment.head set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/marios_portrait","minecraft:custom_model_data":{flags:[1b,1b]}}}
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -75
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ 1000
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=held_item,tag=flipped_gravity] AnimationRotationZ -800
execute if score #mirrored Selected matches 1 positioned ^-0.6 ^-0.56 ^0.3 run teleport @s[tag=held_item,tag=!shrunk,tag=!flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^-0.4 ^-0.28 ^0.15 run teleport @s[tag=held_item,tag=shrunk,tag=!flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^0.6 ^0.56 ^0.3 run teleport @s[tag=held_item,tag=!shrunk,tag=flipped_gravity] ~ ~ ~ ~-90 ~
execute if score #mirrored Selected matches 1 positioned ^0.4 ^0.28 ^0.15 run teleport @s[tag=held_item,tag=shrunk,tag=flipped_gravity] ~ ~ ~ ~-90 ~
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=1..4},tag=!held_item] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=5..12},tag=!held_item] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=13..16},tag=!held_item] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 20
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0