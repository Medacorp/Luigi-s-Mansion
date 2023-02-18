scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/bowling_ghost/waiting
execute if score #mirrored Selected matches 0 run function luigis_mansion:entities/bowling_ghost/waiting/normal
execute if score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/waiting/mirrored
tag @s add was_idle
scoreboard players set @s[scores={ActionTime=20..}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20..}] ActionTime 0