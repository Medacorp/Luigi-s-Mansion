scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.cinema_ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/grabbing_ghost/vanish
execute if score #mirrored Selected matches 0 run teleport @s ~ ~0.2 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~0.2 ~ ~-20 ~
tag @s[scores={ActionTime=20}] add disappear