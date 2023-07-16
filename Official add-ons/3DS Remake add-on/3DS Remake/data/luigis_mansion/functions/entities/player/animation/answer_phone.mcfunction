execute if entity @s[scores={IdleTime=-21,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-21,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-21,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-21,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1
scoreboard players set @s[scores={IdleTime=-1}] IdleTime -21