scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run teleport @s ~ ~0.2 ~ ~ 0
execute if entity @s[scores={AnimationProgress=2}] run teleport @s ~ ~0.4 ~ ~ 0
execute if entity @s[scores={AnimationProgress=3}] run teleport @s ~ ~0.6 ~ ~ 0
execute if entity @s[scores={AnimationProgress=4}] run teleport @s ~ ~0.8 ~ ~ 0
execute if entity @s[scores={AnimationProgress=5}] run teleport @s ~ ~0.6 ~ ~ 0
execute if entity @s[scores={AnimationProgress=6}] run teleport @s ~ ~0.4 ~ ~ 0
execute if entity @s[scores={AnimationProgress=7}] run teleport @s ~ ~0.2 ~ ~ 0
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 45
execute if entity @s[scores={AnimationProgress=1..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 45
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=9}] run playsound luigis_mansion:entity.bowser.head_land hostile @a[tag=same_room] ~ ~ ~ 3 0.8