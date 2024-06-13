scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[20.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=2}] run playsound luigis_mansion:entity.e_gadd.walk neutral @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={AnimationProgress=7}] run playsound luigis_mansion:entity.e_gadd.walk neutral @a[tag=same_room] ~ ~ ~ 1 0.9
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0