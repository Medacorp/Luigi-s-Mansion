execute store result score #temp Time run data get entity @s Pose.Head[2] 4
execute if entity @s[scores={Time=1}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=2..3}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=4..5}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=6..7}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=8..9}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=10..11}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=12..13}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=14..15}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=16..17}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=18..19}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=20..21}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=22..23}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=24..25}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=26..27}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=28..29}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=30..31}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=32..33}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=34..35}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=36..37}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=38..39}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=40}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
data modify entity @s[tag=!flipped_gravity] Rotation[1] set from entity @s Pose.Head[0]
execute if entity @s[tag=flipped_gravity] store result entity @s Rotation[1] float -1 run data get entity @s Pose.Head[0]
execute store result score #temp Time run data get entity @s Rotation[0]
execute if entity @s[tag=!flipped_gravity] store result score #temp2 Time run data get entity @s Pose.Head[1]
execute if entity @s[tag=flipped_gravity] store result score #temp2 Time run data get entity @s Pose.Head[1] -1
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #temp2 Time += #temp Time
execute at @s[scores={Time=40},tag=!shrunk] positioned ~ ~1.45 ~ positioned ^ ^ ^0.3 run particle minecraft:dust{color:16777215,scale:0.75f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute at @s[scores={Time=40},tag=shrunk] positioned ~ ~0.725 ~ positioned ^ ^ ^0.15 run particle minecraft:dust{color:16777215,scale:0.375f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
data modify entity @s Rotation[1] set value 0.0f
execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared