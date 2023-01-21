execute if entity @s[scores={YellTime=-40,Health=71..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=-40,Health=71..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={YellTime=-40,Health=41..70,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=-40,Health=41..70,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={YellTime=-40,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={YellTime=-40,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={YellTime=-40},tag=!gooigi] Sound 50