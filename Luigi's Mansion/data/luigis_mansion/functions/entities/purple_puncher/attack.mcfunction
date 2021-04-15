scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/puncher/attack

scoreboard players set #temp Move 6
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.purple_puncher.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 0 rotated ~342 0 run function luigis_mansion:entities/purple_puncher/punch/normal
execute if entity @s[scores={ActionTime=41..60}] if score #mirrored Selected matches 1 rotated ~342 0 run function luigis_mansion:entities/purple_puncher/punch/hidden
execute at @s[scores={ActionTime=41..60}] run effect give @a[distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=41..60}] run scoreboard players set @a[distance=..1,gamemode=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=41..60}] if entity @a[distance=..1,gamemode=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=60},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0