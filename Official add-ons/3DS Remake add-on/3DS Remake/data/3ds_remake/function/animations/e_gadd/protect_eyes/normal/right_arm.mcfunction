scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3..6}] ~ ~-0.01 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7..14}] ~ ~-0.02 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15..18}] ~ ~-0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3..6}] ~ ~0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7..14}] ~ ~0.02 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15..18}] ~ ~0.01 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 150
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=3..10}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=11..18}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=20..21}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0