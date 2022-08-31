scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.shivers.disappear hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~-20 ~
execute at @s run function luigis_mansion:animations/shivers/vanish
execute if entity @s[scores={ActionTime=40}] run function luigis_mansion:entities/shivers/turn_completely_invisible
execute if entity @s[scores={ActionTime=120}] run function luigis_mansion:entities/shivers/turn_invisible
tag @s[scores={ActionTime=120}] add disappear