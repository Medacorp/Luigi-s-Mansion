scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=41..}] ~ ~-0.99 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=41..}] ~ ~0.99 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players remove @s[scores={AnimationProgress=1..38}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=40..41}] AnimationRotationX 190
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0