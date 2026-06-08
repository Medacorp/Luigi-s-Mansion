scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.crow.caw neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=47}] run playsound luigis_mansion:entity.crow.rustle_feathers neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0