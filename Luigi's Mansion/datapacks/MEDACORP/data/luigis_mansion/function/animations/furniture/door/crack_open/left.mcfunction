scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.door.exterior block @a[tag=same_room] ~ ~ ~ 1