scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3..6}] ~ ~-0.01 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7..14}] ~ ~-0.02 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15..18}] ~ ~-0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3..6}] ~ ~0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7..14}] ~ ~0.02 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15..18}] ~ ~0.01 ~
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0