scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5}] run playsound luigis_mansion:entity.e_gadd.walk neutral @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={AnimationProgress=15}] run playsound luigis_mansion:entity.e_gadd.walk neutral @a[tag=same_room] ~ ~ ~ 1 0.9
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0