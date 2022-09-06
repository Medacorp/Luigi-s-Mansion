function luigis_mansion:entities/player/animation/set/reset
execute if entity @s[scores={Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[tag=!gooigi] Sound 20
tag @s add high_health_idle
scoreboard players set @s IdleTime -141