scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ~ ~0.0167 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ~ ~0.0333 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ~ ~0.05 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6}] ~ ~0.0333 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=7}] ~ ~0.0167 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ~ ~-0.0167 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ~ ~-0.0333 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ~ ~-0.05 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6}] ~ ~-0.0333 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=7}] ~ ~-0.0167 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -150
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -00
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0