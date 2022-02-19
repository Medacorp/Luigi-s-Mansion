scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/player/animation/set/look
tag @s[scores={Dialog=22}] add stop_model
execute if entity @s[scores={Dialog=22}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=22}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 300
execute if entity @s[scores={Dialog=23}] run playsound luigis_mansion:music.observatory_moon music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=300}] run function luigis_mansion:room/hidden/observatory/destroy
teleport @s 643 20 95 0 0
execute if entity @s[scores={Dialog=300}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/outside
execute if entity @s[scores={Dialog=300}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
tag @s[scores={Dialog=340}] remove observatory_dialog
execute if entity @s[scores={Dialog=340}] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=340}] remove stop_model
scoreboard players set @s[scores={Dialog=340}] Dialog 0