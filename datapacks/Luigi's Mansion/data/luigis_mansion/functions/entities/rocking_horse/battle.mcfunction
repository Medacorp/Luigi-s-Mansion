execute if entity @s[tag=!dialog,tag=!big] if entity @e[tag=same_room,tag=!spectator,distance=..2,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_mansion:entities/rocking_horse/collide
execute if entity @s[tag=!dialog,tag=big] if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/rocking_horse/collide_big
execute if entity @s[tag=!attack,tag=!intro] run function luigis_mansion:animations/rocking_horse
execute if entity @s[tag=attack] run function luigis_mansion:entities/rocking_horse/attack
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run tag @s[tag=!intro] add dead
execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier run tag @s add dead

scoreboard players set #temp Move 10
execute if entity @s[tag=intro,scores={Sound=0}] run playsound luigis_mansion:entity.rocking_horse.charge_intro hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=intro,scores={Sound=0}] Sound 30
execute if entity @s[tag=intro] run scoreboard players set #temp Move 20
execute if entity @s[tag=fast] run scoreboard players set #temp Move 20
execute at @s[tag=!attack] run function luigis_mansion:entities/rocking_horse/move_forward