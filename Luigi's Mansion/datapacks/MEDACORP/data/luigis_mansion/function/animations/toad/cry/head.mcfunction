scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.25 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[50.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=2}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=4}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=6}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=8}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=10}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=12}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=14}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=16}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=18}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
execute if entity @s[scores={AnimationProgress=20}] rotated ~ 0 positioned ^ ^1 ^0.5 run particle minecraft:rain ~ ~ ~ 0.2 0.2 0.2 10 1 normal @a[tag=same_room]
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0