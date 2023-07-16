execute if entity @s[scores={IdleTime=-40,Health=31..,Shrunk=0}] run playsound luigis_mansion:entity.player.talk.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Health=31..,Shrunk=1..}] run playsound luigis_mansion:entity.player.talk.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-40,Health=..30,Shrunk=0}] run playsound luigis_mansion:entity.player.talk.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Health=..30,Shrunk=1..}] run playsound luigis_mansion:entity.player.talk.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1