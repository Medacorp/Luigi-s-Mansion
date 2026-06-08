scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ~ ~-0.008 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ~ ~-0.016 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ~ ~-0.024 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ~ ~-0.032 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7..14}] ~ ~-0.04 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ~ ~-0.032 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16}] ~ ~-0.024 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=17}] ~ ~-0.016 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=18}] ~ ~-0.008 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ~ ~0.008 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ~ ~0.016 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ~ ~0.024 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ~ ~0.032 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7..14}] ~ ~0.04 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ~ ~0.032 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16}] ~ ~0.024 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=17}] ~ ~0.016 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=18}] ~ ~0.008 ~
scoreboard players remove @s[scores={AnimationProgress=3..10}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=11..18}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=20..21}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=23..24}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0