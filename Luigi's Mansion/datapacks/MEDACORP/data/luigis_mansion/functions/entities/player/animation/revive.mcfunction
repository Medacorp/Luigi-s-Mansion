execute if entity @s[scores={IdleTime=-40,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.revive.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.revive.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-40,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.revive.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.revive.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1