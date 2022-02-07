execute if entity @s[tag=!high_health_idle,scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!high_health_idle,scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[tag=!high_health_idle,scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!high_health_idle,scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[tag=!high_health_idle] Sound 20
tag @s add high_health_idle
scoreboard players set @s[scores={IdleTime=340}] IdleTime 200