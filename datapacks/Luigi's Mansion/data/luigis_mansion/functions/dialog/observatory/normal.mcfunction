scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=2}] run stopsound @a[scores={Room=46},gamemode=!spectator] music
execute if entity @s[scores={Dialog=2}] run scoreboard players set @a[scores={Room=46},gamemode=!spectator] Music 300
execute if entity @s[scores={Dialog=3}] run playsound luigis_mansion:music.observatory_moon music @a[scores={Room=46},gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=280}] run function luigis_mansion:room/normal/observatory/destroy
teleport @s 643 20 -80 -180 0
tag @s[scores={Dialog=280}] remove observatory_dialog
execute if entity @s[scores={Dialog=280}] as @a[scores={Room=46},gamemode=!spectator] run function luigis_mansion:other/music/set/outside
execute if entity @s[scores={Dialog=280}] run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=46},gamemode=!spectator] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=280}] Dialog 0