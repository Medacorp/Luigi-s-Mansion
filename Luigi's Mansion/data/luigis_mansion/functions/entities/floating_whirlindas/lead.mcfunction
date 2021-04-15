scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=..299}] run function luigis_mansion:entities/floating_whirlindas/turn_visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room] unless entity @e[tag=ball_floor,distance=..4.999999,limit=1] run function luigis_mansion:entities/floating_whirlindas/turn_invisible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/floating_whirlindas/turn_invisible

execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] positioned ^ ^ ^0.7 run teleport @e[tag=this_floating_whirlindas_female,limit=1] ~ ~ ~ ~-180 ~
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 0 rotated ~4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^-0.7 run teleport @s ~ ~ ~ facing ^ ^ ^0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 0 rotated ~4 ~ positioned ^ ^ ^0.7 as @e[tag=this_floating_whirlindas_female,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
execute if entity @s[scores={Dialog=..299}] if score #mirrored Selected matches 1 rotated ~-4 ~ positioned ^ ^ ^0.7 as @e[tag=this_floating_whirlindas_female,limit=1] run teleport @s ~ ~ ~ facing ^ ^ ^-0.5
execute if entity @s[scores={Dialog=300},tag=visible] run scoreboard players set @s VulnerableTime 120
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 0 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 0 positioned ^ ^ ^0.7 as @e[tag=this_floating_whirlindas_female,limit=1] rotated as @s run teleport @s ~ ~ ~ ~18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^-0.7 rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=300..319}] if score #mirrored Selected matches 1 positioned ^ ^ ^0.7 as @e[tag=this_floating_whirlindas_female,limit=1] rotated as @s run teleport @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={Dialog=300}] run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={Dialog=300}] run scoreboard players set @e[tag=this_floating_whirlindas_female,limit=1] AnimationProg 0
tag @s[scores={Dialog=300}] add bow
tag @s[scores={Dialog=420}] remove bow
execute if entity @s[scores={Dialog=420}] run scoreboard players set @s Dialog 0

execute if entity @s[tag=!visible] run particle minecraft:dust 1 1 0.66 1 ~ ~0.6 ~ 0.3 0.3 0.3 0 5