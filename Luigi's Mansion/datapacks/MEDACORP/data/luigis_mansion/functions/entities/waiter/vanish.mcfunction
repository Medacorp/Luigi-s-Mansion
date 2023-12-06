scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.waiter.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:old_animations/waiter/vanish
execute if score #mirrored Selected matches 0 run teleport @s ~ ~0.05 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~0.05 ~ ~-20 ~
execute at @s[scores={ActionTime=40}] run teleport @s ~ ~-2 ~
tag @s[scores={ActionTime=40}] add disappear