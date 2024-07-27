execute if entity @s[tag=!intro,tag=!big] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..2,limit=1] run function luigis_mansion:entities/rocking_horse/hit_player/small
execute if entity @s[tag=!intro,tag=big] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..3,limit=1] run function luigis_mansion:entities/rocking_horse/hit_player/big
execute if entity @s[tag=!attack] run function luigis_mansion:entities/rocking_horse/rock
execute if entity @s[tag=attack,tag=!intro] run function luigis_mansion:entities/rocking_horse/attack
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run tag @s[tag=!intro] add dead
execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier run tag @s add dead

execute if entity @s[tag=intro,scores={Sound=0}] run playsound luigis_mansion:entity.rocking_horse.charge_intro hostile @a[tag=same_room] ~ ~ ~ 0.25
scoreboard players set @s[tag=intro,scores={Sound=0}] Sound 40
execute if entity @s[tag=!fast] run scoreboard players set #temp Move 10
execute if entity @s[tag=fast] run scoreboard players set #temp Move 20
execute if entity @s[tag=intro] run scoreboard players set #temp Move 20
execute at @s unless entity @s[tag=attack,tag=!intro] run function luigis_mansion:entities/ghost/move_forward_force