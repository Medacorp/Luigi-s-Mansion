scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=11}] run playsound luigis_mansion:entity.mr_luggs.pant hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0