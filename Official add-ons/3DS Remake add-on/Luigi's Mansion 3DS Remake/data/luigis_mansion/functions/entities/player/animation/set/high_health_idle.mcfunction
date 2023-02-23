execute unless entity @s[scores={Animation=4}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=4}] if entity @s[scores={Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Animation=4}] if entity @s[scores={Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute unless entity @s[scores={Animation=4}] if entity @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Animation=4}] if entity @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute unless entity @s[scores={Animation=4}] run scoreboard players set @s[tag=!gooigi] Sound 20
execute unless entity @s[scores={Animation=4}] run scoreboard players set @s IdleTime -141
scoreboard players set @s Animation 4