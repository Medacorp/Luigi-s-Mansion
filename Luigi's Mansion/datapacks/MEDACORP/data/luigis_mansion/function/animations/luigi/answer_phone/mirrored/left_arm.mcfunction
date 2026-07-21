scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=held_item,scores={AnimationProgress=11..}] item set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/table_mounted_telephone","minecraft:custom_model_data":{flags:[1b],floats:[5f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}}
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationX -1500
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationY -100
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=!shrunk] ^ ^-0.2 ^-0.2
execute at @s rotated ~ 0 run teleport @s[scores={AnimationProgress=17..},tag=shrunk] ^ ^-0.1 ^-0.1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 200
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..16}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationY 140
scoreboard players remove @s[scores={AnimationProgress=15..19}] AnimationRotationY 160
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20