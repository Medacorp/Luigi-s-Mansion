scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] equipment.head set value {id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:custom_model_data":{flags:[B;0b,0b],floats:[0f],strings:["hat"],colors:[I;37129]}}}
execute unless score #mirrored Selected matches 1 run data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] equipment.head.components."minecraft:custom_model_data".colors[0] set from storage luigis_mansion:data luigi.animation.hat_model.color
execute unless score #mirrored Selected matches 1 if data storage luigis_mansion:data luigi.animation.hat_model{variant:1b} run data modify entity @s[tag=held_item,scores={AnimationProgress=40..55}] equipment.head.components."minecraft:custom_model_data".flags[1] set value 1b
execute unless score #mirrored Selected matches 1 run data remove entity @s[tag=held_item,scores={AnimationProgress=56..}] equipment.head
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=held_item,scores={AnimationProgress=1}] run scoreboard players add #temp Time 180
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 40
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=21..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=26..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=31..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=41..45}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 30
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=41..43}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 20
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=44..46}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=47..49}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=50..52}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=53..55}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
execute unless score #mirrored Selected matches 1 if entity @s[scores={AnimationProgress=56..}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 30
scoreboard players remove #temp Time 180
execute store result entity @s Rotation[1] float 1 run scoreboard players remove #temp Time 90
scoreboard players reset #temp Time
execute at @s[tag=!shrunk,tag=held_item,tag=!flipped_gravity] positioned ^ ^-0.5 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,tag=held_item,tag=!flipped_gravity] positioned ^ ^-0.25 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!shrunk,tag=held_item,tag=flipped_gravity] positioned ^ ^0.5 ^ run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=shrunk,tag=held_item,tag=flipped_gravity] positioned ^ ^0.25 ^ run teleport @s ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProgress=60}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=60},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0