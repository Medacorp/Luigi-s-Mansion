scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.mr_bones.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/mr_bones/laugh
tag @s[scores={ActionTime=40}] remove laugh
scoreboard players set @s[scores={ActionTime=40}] Time 60
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0