execute if entity @s[scores={IdleTime=-20,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.enthusiastic.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.enthusiastic.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-20,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.enthusiastic.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.enthusiastic.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-6,InteractionTime=1..}] run playsound luigis_mansion:entity.player.punch player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={IdleTime=-20}] Sound 20