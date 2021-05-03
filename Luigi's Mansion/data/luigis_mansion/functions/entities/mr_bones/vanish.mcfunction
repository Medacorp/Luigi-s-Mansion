scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.mr_bones.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #mirrored Selected matches 0 run teleport @s ~ ~0.05 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~0.05 ~ ~-20 ~
execute at @s run function luigis_mansion:animations/mr_bones/vanish
execute at @s[scores={ActionTime=40}] run teleport @s ~ ~-4 ~
tag @s[scores={ActionTime=40}] add disappear