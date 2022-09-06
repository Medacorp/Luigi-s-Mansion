execute if entity @s[scores={IdleTime=-20,Shrunk=0}] run playsound luigis_mansion:entity.player.low_health_idle player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Shrunk=1..}] run playsound luigis_mansion:entity.player.low_health_idle player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-21}] Sound 20
scoreboard players set @s[scores={IdleTime=-1}] IdleTime -21