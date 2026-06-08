scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.exterior block @a[tag=same_room] ~ ~ ~ 1