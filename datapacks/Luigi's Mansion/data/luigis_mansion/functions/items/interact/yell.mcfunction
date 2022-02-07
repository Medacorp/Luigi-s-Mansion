scoreboard players add @s YellTime 1
execute if entity @s[scores={YellTime=2,Health=71..,Shrunk=0}] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=2,Health=71..,Shrunk=1..}] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={YellTime=2,Health=41..70,Shrunk=0}] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=2,Health=41..70,Shrunk=1..}] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={YellTime=2,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=2,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={YellTime=2}] Sound 50
scoreboard players reset @s[scores={YellTime=42}] YellTime
function luigis_mansion:entities/player/idle_reset