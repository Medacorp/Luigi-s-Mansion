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
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 350
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -250
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationY 0
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationZ 100
execute at @s run teleport @s[tag=held_item] ^ ^0.05 ^-0.25
execute if entity @s[scores={AnimationProgress=1..10},tag=!held_item] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..22},tag=!held_item] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=23..24},tag=!held_item] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0