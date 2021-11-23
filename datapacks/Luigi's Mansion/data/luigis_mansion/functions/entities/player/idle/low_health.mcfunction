execute if entity @s[scores={IdleTime=20}] run playsound luigis_mansion:entity.player.low_health_idle player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={IdleTime=20}] Sound 20
tag @s add low_health_idle
scoreboard players set @s[scores={IdleTime=40}] IdleTime 19