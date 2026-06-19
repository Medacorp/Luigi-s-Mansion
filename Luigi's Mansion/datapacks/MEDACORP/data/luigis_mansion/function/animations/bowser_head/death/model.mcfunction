scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=1}] run teleport @s ~ ~0.2 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=2}] run teleport @s ~ ~0.4 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=3}] run teleport @s ~ ~0.6 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=4}] run teleport @s ~ ~0.8 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=5}] run teleport @s ~ ~0.6 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=6}] run teleport @s ~ ~0.4 ~ ~ 0
execute if entity @s[tag=!flipped_gravity,scores={AnimationProgress=7}] run teleport @s ~ ~0.2 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=1}] run teleport @s ~ ~-0.2 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=2}] run teleport @s ~ ~-0.4 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=3}] run teleport @s ~ ~-0.6 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=4}] run teleport @s ~ ~-0.8 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=5}] run teleport @s ~ ~-0.6 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=6}] run teleport @s ~ ~-0.4 ~ ~ 0
execute if entity @s[tag=flipped_gravity,scores={AnimationProgress=7}] run teleport @s ~ ~-0.2 ~ ~ 0
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationZ 45
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationZ 45
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=9}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3 0.8