scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1..},tag=held_item] item set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/marios_portrait","minecraft:custom_model_data":{flags:[1b,1b]}}}
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -75
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ 1000
scoreboard players remove @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ 1800
teleport @s[tag=held_item,tag=!shrunk] ^0.6 ^0.56 ^0.3 ~-90 ~
teleport @s[tag=held_item,tag=shrunk] ^0.4 ^0.28 ^0.15 ~-90 ~
scoreboard players remove @s[scores={AnimationProgress=1..4},tag=!held_item] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=5..12},tag=!held_item] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=13..16},tag=!held_item] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0