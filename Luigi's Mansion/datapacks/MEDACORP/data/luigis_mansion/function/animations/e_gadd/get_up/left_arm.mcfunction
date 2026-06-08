scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1..10}] ~ ~-0.3 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ~ ~-0.25 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ~ ~-0.2 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ~ ~-0.15 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ~ ~-0.1 ~ ~ ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ~ ~-0.05 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1..10}] ~ ~0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ~ ~0.25 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ~ ~0.2 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ~ ~0.15 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ~ ~0.1 ~ ~ ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ~ ~0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players set @s[scores={AnimationProgress=1},tag=held_item] AnimationRotationX -250
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
teleport @s[scores={AnimationProgress=15},tag=held_item] ^ ^ ^-0.25
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1..12},tag=held_item] ^ ^-0.15 ^-0.25
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13},tag=held_item] ^ ^-0.1 ^-0.25
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14},tag=held_item] ^ ^-0.05 ^-0.25
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16..20},tag=held_item] ^ ^0.05 ^-0.25
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1..12},tag=held_item] ^ ^0.15 ^-0.25
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13},tag=held_item] ^ ^0.1 ^-0.25
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14},tag=held_item] ^ ^0.05 ^-0.25
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16..20},tag=held_item] ^ ^-0.05 ^-0.25
execute if entity @s[scores={AnimationProgress=1..10},tag=!held_item] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=11..20},tag=!held_item] run scoreboard players add @s AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0