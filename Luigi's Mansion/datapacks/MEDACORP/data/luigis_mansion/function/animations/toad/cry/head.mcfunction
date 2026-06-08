scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.25 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationX 10
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
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0