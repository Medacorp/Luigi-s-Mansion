scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=..299},tag=visible] run function luigis_mansion:old_entities/ghost/turn_visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] unless entity @e[tag=ball_floor,distance=..4.999999,limit=1] run function luigis_mansion:old_entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:old_entities/ghost/turn_invisible

execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^0.7 run teleport @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] ~ ~ ~ ~-180 ~
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 0 rotated ~4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 0 rotated ~4 ~ positioned ^ ^ ^0.7 as @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^0.7 as @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
execute if entity @s[scores={Dialog=300},tag=visible] if predicate luigis_mansion:floating_whirlindas_bow run tag @s add bow
execute if entity @s[scores={Dialog=300},tag=bow] run scoreboard players set @s VulnerableTime 120
execute if entity @s[scores={Dialog=300},tag=bow] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 0 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 0 positioned ^ ^ ^0.7 as @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^0.7 as @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=300}] run scoreboard players set @s AnimationProgress 0
execute if entity @s[scores={Dialog=300}] run scoreboard players set @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] AnimationProgress 0
execute if entity @s[scores={Dialog=400},tag=bow] run playsound luigis_mansion:entity.floating_whirlindas.male.bow hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400},tag=!bow] run playsound luigis_mansion:entity.floating_whirlindas.male.dance hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400},tag=!bow] at @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.dance hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=420}] run tag @s remove bow
execute if entity @s[scores={Dialog=420}] run scoreboard players set @s Dialog 0

execute if entity @s[tag=!visible] run particle minecraft:dust 1 1 0.66 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5