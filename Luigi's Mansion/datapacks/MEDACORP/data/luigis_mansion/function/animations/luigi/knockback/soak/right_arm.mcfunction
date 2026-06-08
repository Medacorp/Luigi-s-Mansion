scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.6 ~ 0.1 0.1 0.1 0 2 normal @a[tag=same_room]
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 200
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0