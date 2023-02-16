function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 20
scoreboard players set @s Animation 4
scoreboard players set @s IdleTime -141