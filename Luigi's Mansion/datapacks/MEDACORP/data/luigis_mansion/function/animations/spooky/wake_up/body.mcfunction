scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=..36}] ~ ~-0.4 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=..36}] ~ ~0.4 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 800
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0