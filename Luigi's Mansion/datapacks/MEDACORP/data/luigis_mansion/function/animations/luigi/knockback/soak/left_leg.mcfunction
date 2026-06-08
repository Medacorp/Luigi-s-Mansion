scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=..37}] run particle minecraft:falling_water ~ ~1.6 ~ 0.1 0.1 0.1 0 2 normal @a[tag=same_room]
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0