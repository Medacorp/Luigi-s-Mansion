execute if entity @s[tag=!high_health_idle] run playsound luigis_mansion:entity.player.idle player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!high_health_idle] Sound 20
tag @s add high_health_idle
scoreboard players set @s[scores={IdleTime=340}] IdleTime 200