scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1}] ~ ~0.016 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=2}] ~ ~0.032 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ~ ~0.048 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ~ ~0.064 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5..10}] ~ ~0.08 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ~ ~0.064 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ~ ~0.048 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ~ ~0.032 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ~ ~0.016 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1}] ~ ~-0.016 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=2}] ~ ~-0.032 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ~ ~-0.048 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ~ ~-0.064 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5..10}] ~ ~-0.08 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ~ ~-0.064 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ~ ~-0.048 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ~ ~-0.032 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ~ ~-0.016 ~
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=5..13}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=14..16}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0