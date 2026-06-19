scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] item set value {id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:custom_model_data":{flags:[0b,0b],floats:[0f],strings:["hat"],colors:[37129]}}}
data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] item.components."minecraft:custom_model_data".colors[0] set from storage luigis_mansion:data luigi.animation.hat_model.color
execute if data storage luigis_mansion:data luigi.animation.hat_model{variant:1b} run data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] item.components."minecraft:custom_model_data".flags[1] set value 1b
data remove entity @s[tag=held_item,scores={AnimationProgress=56..}] item
execute if entity @s[tag=held_item,scores={AnimationProgress=1}] run scoreboard players add @s AnimationRotationX 1800
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 400
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=21..25}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=31..35}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=41..43}] run scoreboard players add @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=44..46}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=47..49}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=50..52}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=53..55}] run scoreboard players remove @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=56..}] run scoreboard players add @s AnimationRotationX 300
scoreboard players operation #head Time = @s AnimationRotationX
execute store result entity @s Rotation[1] float 0.1 run scoreboard players remove #head Time 2700
scoreboard players reset #head Time
execute at @s[tag=!shrunk,tag=held_item,tag=!flipped_gravity] positioned ^ ^-0.5 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,tag=held_item,tag=!flipped_gravity] positioned ^ ^-0.25 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!shrunk,tag=held_item,tag=flipped_gravity] positioned ^ ^0.5 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,tag=held_item,tag=flipped_gravity] positioned ^ ^0.25 ^ run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0