scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound e3_demo:entity.ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:old_animations/ghost/vanish
execute if score #mirrored Selected matches 0 run teleport @s ~ ~0.1 ~ ~10 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~0.1 ~ ~-10 ~
execute at @s[scores={ActionTime=40}] run teleport @s ~ ~-4 ~
tag @s[scores={ActionTime=40}] add disappear