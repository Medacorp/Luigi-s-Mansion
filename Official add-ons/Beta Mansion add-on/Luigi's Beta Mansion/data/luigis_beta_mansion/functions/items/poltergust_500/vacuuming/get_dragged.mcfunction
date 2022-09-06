scoreboard players add @s[scores={Pull=..40}] Pull 1
execute if entity @s[scores={Pull=10,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Pull=10,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={Pull=10,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Pull=10,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={Pull=20..},gamemode=!creative] run function luigis_mansion:entities/player/pulled_damage