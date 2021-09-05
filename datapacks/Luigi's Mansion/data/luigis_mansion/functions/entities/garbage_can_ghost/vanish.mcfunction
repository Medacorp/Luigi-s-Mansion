scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.garbage_can_ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..2}] ~ ~0.4 ~
teleport @s[scores={ActionTime=3..4}] ~ ~-0.4 ~
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~-8 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~8 ~
execute at @s[scores={ActionTime=20}] run teleport @s ~ ~-4.8 ~
execute if entity @s[scores={ActionTime=20}] if score #mirrored Selected matches 0 run data modify entity @s HandItems[1].tag.CustomModelData set value 9
execute if entity @s[scores={ActionTime=20}] if score #mirrored Selected matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 9
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/garbage_can_ghost/vanish
tag @s[scores={ActionTime=20}] add disappear
