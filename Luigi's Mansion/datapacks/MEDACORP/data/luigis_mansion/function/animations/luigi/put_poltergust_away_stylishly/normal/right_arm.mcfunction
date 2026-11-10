scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=held_item,tag=poltergust_grabbed] run data modify entity @s item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{is_poltergust:1b}}}]
execute if entity @s[tag=held_item,tag=!poltergust_grabbed] run data remove entity @s item
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 120
scoreboard players remove @s[scores={AnimationProgress=6..10},tag=!held_item] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=16..21}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationX 370
scoreboard players remove @s[scores={AnimationProgress=27..30}] AnimationRotationX 250
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationY 80
scoreboard players remove @s[scores={AnimationProgress=6..15},tag=!held_item] AnimationRotationY 80
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 80
teleport @s[scores={AnimationProgress=6},tag=held_item] ~ ~ ~ ~32 ~18
teleport @s[scores={AnimationProgress=7},tag=held_item] ~ ~ ~ ~24 ~6
teleport @s[scores={AnimationProgress=8},tag=held_item] ~ ~ ~ ~16 ~-6
teleport @s[scores={AnimationProgress=9},tag=held_item] ~ ~ ~ ~8 ~-18
teleport @s[scores={AnimationProgress=10},tag=held_item] ~ ~ ~ ~ ~-30
teleport @s[scores={AnimationProgress=11},tag=held_item] ~ ~ ~ ~-8 ~-30
teleport @s[scores={AnimationProgress=12},tag=held_item] ~ ~ ~ ~-16 ~-30
teleport @s[scores={AnimationProgress=13},tag=held_item] ~ ~ ~ ~-24 ~-30
teleport @s[scores={AnimationProgress=14},tag=held_item] ~ ~ ~ ~-32 ~-30
scoreboard players set @s[scores={AnimationProgress=6},tag=held_item] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=6},tag=held_item] AnimationRotationY 0
scoreboard players add @s[scores={AnimationProgress=6..15},tag=held_item] AnimationRotationZ 720
scoreboard players set @s[scores={AnimationProgress=15},tag=held_item] AnimationRotationX -1200
scoreboard players set @s[scores={AnimationProgress=15},tag=held_item] AnimationRotationY -400
scoreboard players add @s[scores={AnimationProgress=30}] AnimationProgress 0